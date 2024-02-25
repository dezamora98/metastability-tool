-- Detector de Frente Positivo
-- MOORE
--
LIBRARY  IEEE;
USE IEEE.Std_Logic_1164.ALL;

ENTITY DFP IS
PORT(
	Reset  	: IN	Std_Logic; -- activo en '1'
	CLK		: IN	Std_Logic;
	X		: IN    Std_Logic;
	Pulso	: OUT   Std_Logic);
END DFP;

ARCHITECTURE  A_DFP  OF  DFP  IS
TYPE   State IS (S0, S1, S2);
SIGNAL EP, EF: State;
BEGIN

----------------------------------------------------------------------
-- Logica Combinacional del Pr�ximo Estado
Process (EP, X)
BEGIN
	CASE  EP IS
		WHEN  S0 => IF X = '1'		THEN 	EF <= S0;
									ELSE 	EF <= S1;
					END IF;  
		WHEN  S1 => IF X = '0'		THEN 	EF <= S1;
									ELSE 	EF <= S2;
					END IF;  
					
		WHEN  S2 => IF X = '0'		THEN 	EF <= S1;
									ELSE 	EF <= S0;
					END IF;  

		WHEN  Others =>                     EF <= S0;
	END CASE;
END  PROCESS;

PROCESS  (CLK, Reset)
BEGIN
      IF      Reset = '1'	    THEN   EP <= S0;
      ELSIF Rising_Edge(CLK)	THEN   EP <= EF;
      END IF;	
END  PROCESS;

----------------------------------------------------------------
-- Logica Combinacional para la SALIDA
Pulso     <=   	'1'   WHEN    EP = S2   ELSE
				'0';


END;