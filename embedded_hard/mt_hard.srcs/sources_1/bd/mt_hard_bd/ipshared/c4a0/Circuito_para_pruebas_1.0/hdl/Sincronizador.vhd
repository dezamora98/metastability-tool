-- Fichero     : Sincronizador.VHD
-- Sincronizador
-- Registro de desplazamiento de dos etapas

LIBRARY  IEEE;
USE IEEE.Std_Logic_1164.ALL;

ENTITY Sincronizador IS
PORT(
	Reset  	: IN	Std_Logic;
	CLK		: IN	Std_Logic;
	X	  	: IN    Std_Logic;
	Salida 	: OUT   Std_Logic);
END Sincronizador;


ARCHITECTURE  A_Sincronizador  OF  Sincronizador  IS
SIGNAL Temp: Std_Logic_Vector(1 downto 0);

BEGIN

PROCESS  (Reset, CLK)
BEGIN
    IF 		  Reset = '1'		THEN 	Temp <=  (Others => '0');
    ELSIF 	Rising_Edge(CLK)	THEN	Temp <= Temp(0) & X;
	END IF;
END  PROCESS;

-- Logica Combinacional para la SALIDA

Salida     <=          Temp(1);


END;

