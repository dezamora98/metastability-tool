-- Contador de N Bits 
-- Entrada de habilitación sincrónica
-- Reset asincrónico
-- Load   sincrónico
--
LIBRARY  IEEE;
USE IEEE.Std_Logic_1164.ALL;
USE IEEE.Std_Logic_arith.all;     -- para usar la funcion: conv_std_logic_vector
USE IEEE.Std_Logic_unsigned.ALL;  -- para poder incrementar (+)

ENTITY Contador_NBits IS
GENERIC (N: Integer :=  4;  -- número de bits
         M: Integer := 10); -- base de conteo
PORT(
	CLK     : IN     Std_Logic;
	ACLR    : IN     Std_Logic;  -- asincronico y activo en '1'
	SCLR    : IN     Std_Logic := '0'; -- sincrónico y activo en '1'
 	Enable  : IN     Std_Logic := '0'; -- activo en '1'
 	Load    : IN     Std_Logic := '0';  -- sincrónico y activo en '1'
 	Dato    : IN     Std_Logic_Vector (N - 1 downto 0) := (Others => '0');
 	RCO     : OUT    Std_Logic;
 	Q       : OUT    Std_Logic_Vector (N - 1 downto 0));
END Contador_NBits;

ARCHITECTURE  A_Contador_NBits  OF  Contador_NBits  IS
SIGNAL   EP, EF	: Std_Logic_Vector(N - 1 downto 0);
CONSTANT MAX	  	: Std_Logic_Vector(N - 1 downto 0):= conv_std_logic_vector(M - 1, N);


BEGIN

---------------------------------------------------------------------------------------
---- Memoria de Estados
PROCESS(CLK, ACLR)
BEGIN
	IF    	ACLR = '1'      	THEN EP <= (Others => '0');
	ELSIF	Rising_Edge(CLK)	THEN EP <= EF;
	END IF;
END PROCESS;

---------------------------------------------------------------------------------------
---- Lógica del Próximo Estado    (CLC)

EF <=	(Others => '0')	WHEN 	SCLR   = '1' 				ELSE
		Dato			WHEN 	Load   = '1' 				ELSE
		EP + 1			WHEN	Enable = '1' and EP < MAX	ELSE 
		(Others => '0')	WHEN 	Enable = '1' and EP >= MAX  ELSE
		EP;
		
---------------------------------------------------------------------------------------
	---- Lógica de la Salida    (CLC)

 Q   <= EP;
 RCO <=   '1'    WHEN   (EP = MAX)   AND   (Enable = '1')  ELSE
          '0';

END;



