---- Circuito para sincronizar la señal de CLR asincrónica

Library IEEE;
use IEEE.std_logic_1164.all;


Entity Sincroniza_RST is 
Port( 	
		ACLR		:	IN		std_logic;			-- reset asincronico activo en '1'
		Clock		:	IN		std_logic;
		EN			:	IN		std_logic;        -- activo en '1'
-------------------------------------------------------------------------------------------------------
		SCLR     : 	OUT 	std_logic);       -- salida activa en '1'
----------------------------------------------------------------------------------------------------	
END Sincroniza_RST;


Architecture A_Sincroniza_RST of Sincroniza_RST is	
	

--DECLARACION de SEÑALES 
-------------------------------------------------------------------------------
SIGNAL	RESET_1	:	std_logic;
SIGNAL	RESET_2	:	std_logic;
-------------------------------------------------------------------------------
CONSTANT K 			: Integer := 2;
SIGNAL 	EF, EP	: Std_Logic_Vector(K - 1 downto 0);
-------------------------------------------------------------------------------

BEGIN

	
-------------------------------------------------------------------------------
-- Sincronización de la señal de RESET	


PROCESS  (ACLR, Clock)
BEGIN
    IF 		ACLR = '1'				THEN 	EP <=  (Others => '1');
    ELSIF	Rising_Edge(Clock)	THEN	EP <=   EF;
	 END IF;
END  PROCESS;

--------------------------------------------------------------------------------------
---- CLC del Próximo ESTADO

EF <= EP(K - 2 downto 0) & '0'  WHEN EN = '1'	ELSE
		(Others => '1');

--------------------------------------------------------------------------------------
---- CLC de la SALIDA

SCLR	<=		EP(K - 1);


END;
	

