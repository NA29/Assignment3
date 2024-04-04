library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity FP_Adder is 
	Port (A, B : in std_logic_vector (7 downto 0);
			Sum  : out std_logic_vector (7 downto 0));
end FP_Adder;


ARCHITECTURE Behavioral OF FP_Adder IS
	-- defining all intermediate signals
	signal signA,signB,final_sign: std_logic;
	signal E_A, E_B: unsigned(3 downto 0);
	signal sum_e1,sum_e2:unsigned(3 downto 0);
	signal manta1,mantb1,manta2,mantb2,sum_mant1,sum_mant2: unsigned(4 downto 0);
	signal intersum1,intersum2: std_logic_vector(7 downto 0);
	signal easywin: std_logic;
	signal init_manta,init_mantb: std_logic_vector(2 downto 0);
	
BEGIN
	-- finding_sign initializes the intermediate signals and find the sign of the input numbers
	finding_sign:PROCESS(A, B)
	
	BEGIN
        
      E_A <= UNSIGNED(A(6 downto 3)); 
      E_B <= UNSIGNED(B(6 downto 3)); 
      manta1 <= UNSIGNED("01" & A(2 downto 0)); 
      mantb1 <= UNSIGNED("01" & B(2 downto 0));
		init_manta<= A(2 downto 0);
		init_mantb<= B(2 downto 0);
		
		-- find the input A and B signs
		if A(7)='0' then
			signA<='0';
		else
			signA<='1';
		end if;
		
		if B(7)='0' then
			signB<='0';
		else
			signB<='1';
		end if;
	end process;

	-- final_signs defines the sign of the sum (negative (1) or positive (0))
	final_signs:process(signA,signB,A,B)
	
	begin
		if signB='1' and signA='0' then -- if B is negative and not A
			if A(6 downto 0)>B(6 downto 0) then -- if A>B then the sum is positive
				final_sign<='0';
			else											-- if A<B then the sum is negative
				final_sign<='1';
			end if;
		elsif signB='0' and signA='1' then -- if A is negative and not B
			if A(6 downto 0)<B(6 downto 0) then -- if A>B then the sum is negative
				final_sign<='0';
			else											-- if A<B then the sum is positive
				final_sign<='1';
			end if;
		elsif signB='1' and signA='1' then -- if both A and B are negative, the sum is negative
			final_sign<='1';
		else										  -- if both A and B are positive, the sum is positive
			final_sign<='0';
		end if;
	end process;
	
	
	-- conditions will process the edge cases
	conditions: process(E_A,init_manta,init_mantb,E_B,signA,signB,A,B)
	begin
		
		--this condition checks if E=15 and M is non zero so that would transform that input into NaN and the sum into NaN
		if (E_A="1111" and init_manta/="000") or (E_B="1111" and init_mantb/="000") then
			easywin<='1';
			intersum1<="11111111";
			report "The sum is NaN";
			
		-- this condition checks if A is positive infinity and B is negative infinity, then the sum is NaN
		elsif ((E_A="1111" and init_manta="000" and signA='0') and (E_B="1111" and init_mantb="000" and signB='1')) or ((E_A="1111" and init_manta="000" and signA='1') and (E_B="1111" and init_mantb="000" and signB='0')) then
			easywin<='1';
			intersum1<="11111111";
			report "The sum is NaN";
			
		-- this condition checks if A and B are positive infinity, the sum is positive infinity
		elsif (E_A="1111" and init_manta="000" and signA='0') and (E_B="1111" and init_mantb="000" and signB='0') then
			easywin<='1';
			intersum1<="00000001";
			report "The sum is positive infinity";
			
		-- this condition checks if A is negative infinity and B is positive infinity, then the sum is NaN
		elsif (E_A="1111" and init_manta="000" and signA='1') and (E_B="1111" and init_mantb="000" and signB='0') then
			easywin<='1';
			intersum1<="11111111";
			report "The sum is NaN";
			
		-- this condition checks if A is negative infinity and B is negative infinity, the sum is negative infinity
		elsif (E_A="1111" and init_manta="000" and signA='1') and (E_B="1111" and init_mantb="000" and signB='1') then
			easywin<='1';
			intersum1<="10000001";
			report "The sum is negative infinity";
		
		-- this condition checks if A is negative infinity and B is a real number, the sum is negative infinity
		elsif (E_A="1111" and init_manta="000" and signA='1') then
			easywin<='1';
			intersum1<="10000001";
			report "The sum is negative infinity";
		
		-- this condition checks if A is positive infinity and B is a real number, the sum is positive infinity
		elsif (E_A="1111" and init_manta="000" and signA='0') then
			easywin<='1';
			intersum1<="00000001";
			report "The sum is positive infinity";
		
		-- this condition checks if B is negative infinity and A is a real number, the sum is negative infinity
		elsif (E_B="1111" and init_mantb="000" and signB='1') then
			easywin<='1';
			intersum1<="10000001";
			report "The sum is negative infinity";
		
		-- this condition checks if B is positive infinity and A is a real number, the sum is positive infinity
		elsif (E_B="1111" and init_mantb="000" and signB='0') then
			easywin<='1';
			intersum1<="00000001";
			report "The sum is positive infinity";
		
		-- this condition checks if A is equal to 0, the sum is B
		elsif E_A="0000" then
			intersum1<=B;
			easywin<='1';
		
		-- this condition checks if B is equal to 0, the sum is A
		elsif E_B="0000" then
			intersum1<=A;
			easywin<='1';
		else -- if there are no edge cases, then easywin is set to 0 so that the remaining code may run
			intersum1<="00000000";
			easywin<='0';
		end if;
	end process;
	
	-- shift_mants will process the mantissas based on which exponent is greater
	shift_mants: process (E_A,init_manta,init_mantb,E_B,signA,signB,A,B,easywin,manta1,mantb1)
	
	variable ea, eb, Exp_diff : unsigned(3 downto 0);
	variable Mant_A, Mant_B: unsigned(4 downto 0);
	
	begin
			ea:=E_A;
			eb:=E_B;
			
			if easywin='0' then
				if ea > eb then -- if A's exponent is bigger than B's, shift B's mantissa to the right
									 -- an equal amount of time it is bigger
						Exp_diff := ea - eb;
						
						Mant_B:= shift_right(unsigned(mantb1),to_integer(Exp_diff));
						
						report "E_A :" & integer'image(to_integer(ea));
						sum_e1<= ea;
						mantb2<=Mant_B; -- assign the new mantissas to intermediate mantissa signals 
						manta2<=manta1;
				ELSE				 -- if B's exponent is bigger than A's
						Exp_diff := eb - ea;
					  
						Mant_A := shift_right(unsigned(manta1),to_integer(Exp_diff));
						sum_e1<= eb;
						manta2<=Mant_A; -- assign the new mantissas to intermediate mantissa signals
						mantb2<=mantb1;
						
				end if;
			else -- this is to counter the latches, so that the variables we define and signals have values
				sum_e1<= "0000";
				Exp_diff:="0000";
				Mant_A:="00000";
				Mant_B:="00000";
				mantb2<=Mant_B;
				manta2<=Mant_A;
				
			end if;
		
	end process;

			
	-- summing will process the mantissas to obtain the sum (by adding or substracting) 
	summing: process (signA,signB, manta2,mantb2,easywin)
	
	variable mantb2_neg : unsigned(4 downto 0);
	variable sum_neg: unsigned(4 downto 0);
	variable manta2_neg : unsigned(4 downto 0);
	
	begin
		-- to store the complements for two's complement addition when negative

		mantb2_neg:= not mantb2; 
		manta2_neg:= not manta2;
		
		if easywin='0' then
			if (signA ='0') and (signB ='0') then -- if both A and B are positive
					sum_mant1 <= manta2 + mantb2; -- add the mantissas
			
			elsif signA='1' and signB='1' then -- if both A and B are negative
					sum_mant1 <= manta2 + mantb2; -- add the mantissas

			elsif signA='0' and signB='1' then -- if A is positive and B is negative
					mantb2_neg:=mantb2_neg+1;
					sum_neg:=manta2+mantb2_neg; -- add the mantissas with two's complement
					if sum_neg(4)='1' then -- if the sum is negative, turn back into positive
						sum_neg:=not sum_neg;
						sum_neg:= sum_neg+1;
						sum_mant1<=sum_neg;
					else
						sum_mant1<=sum_neg;
					end if;
					
			elsif signA='1' and signB='0' then -- if B is positive and A is negative
					manta2_neg:=manta2_neg+1;
					sum_neg:=mantb2+manta2_neg; -- add the mantissas with two's complement
					if sum_neg(4)='1' then -- if the sum is negative, turn back into positive
						sum_neg:=not sum_neg;
						sum_neg:= sum_neg+1;
						sum_mant1<=sum_neg;
					else
						sum_mant1<=sum_neg;
					end if;
					
			else -- to remove latches
					sum_mant1<="00000";
			end if;
			
		else -- to remove latches
			sum_mant1<="00000";
		end if;
		
	end process;
	
	-- recombining will process the final mantissa and exponent based on the summed mantissa
	recombining: process(sum_e1,sum_mant1,final_sign, easywin)
	
	variable Sum_E: unsigned(3 downto 0);
	variable Sum_Mant: unsigned(4 downto 0);

	
	begin
			Sum_E:=sum_e1;
			Sum_Mant:=sum_mant1;
			  
			if easywin='0' then
			
				-- if the summed mantissa has overflow, shift it right and increase E
				if Sum_Mant(4) = '1' then 
						Sum_Mant := shift_right(unsigned(Sum_Mant),1);
						Sum_E := Sum_E + 1;
						intersum2<="00000000";
				
				-- if the summed mantissa is 0, then it becomes an Edge case (E=0, M=0)
				elsif Sum_Mant="00000" then 
						if  final_sign='1' then
							intersum2<="10000001";
						
						else
							intersum2<="00000001";
						
						end if;
				
				-- if the summed mantissa does not have 1 as the hidden bit
				-- then shift the mantissa left until you have a 1
				elsif Sum_Mant(3)='0' then -- if the
						for i in 3 downto 0 loop
							Sum_Mant := shift_left(unsigned(Sum_Mant),1);
							Sum_E := Sum_E - 1;
							if Sum_Mant(3)='1' then
								exit;
							end if;
								
						end loop;
						intersum2<="00000000";
				else -- to avoid latches
						sum_e2<="0000";
						sum_mant2<="00000";
						intersum2<="00000000";
				end if;
				sum_mant2<=Sum_Mant;
				sum_e2<=Sum_E;
			else -- to avoid latches
				sum_e2<="0000";
				sum_mant2<="00000";
				intersum2<="00000000";
			END IF;
	end process;

	-- final_assignment defines the final sum depending on the particular case
	final_assignment: process(easywin, intersum1,intersum2, final_sign, sum_e2, sum_mant2,sum_mant1)
	
	begin
	
		-- if an edge case is met, easywin is set to 1 and sum is equal to the defined sum
		if easywin = '1' then
			Sum <= intersum1;
		-- if the summed mantissa is set to 0, we also reach an edge case
		elsif sum_mant1="00000" then
			Sum<=intersum2;
		-- processing additional edge cases
		elsif sum_e2="1111" and sum_mant2="00000" and final_sign='0' then
			Sum<="00000001";
			report "The sum is positive infinity";
		elsif sum_e2="1111" and sum_mant2="00000" and final_sign='1' then
			Sum<="10000001";
			report "The sum is negative infinity";
		elsif sum_e2="1111" and sum_mant2/="00000" then
			Sum<="11111111";
			report "The sum is NaN";
		-- this is in the case where we satisfy no edge cases, we combined S,E and M
		else
			Sum <= std_logic_vector(final_sign & sum_e2 & sum_mant2(2 downto 0));
		end if;
		
	end process;
	
END Behavioral;