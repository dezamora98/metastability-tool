library ieee;
use ieee.std_logic_1164.all;

-- OJO el contador de eventos tiene que trabajar  al frecuencia de reloj del circuito test --
-- El contador de tiempo es ascendente, por lo tanto la base de conteo debe calcularse en los drivers,
-- la base de conteo no coincide con el valor que se carga en la entrada datos -- 

entity Circuito_para_pruebas is

	port 
	(
		clk_bus, clk_circuito_test, clk_generador_dato	: in std_logic;
		reset	   : in std_logic; -- activo en 1 -- reset asincrónico
		iniciar	: in std_LOGIC;
		habilitar_interrupcion : std_LOGIC; -- '1' habilita la salida de interrupción
		base_conteo 	: in std_Logic_Vector(31 downto 0);
		eventos_metaestables	: out std_logic_vector(15 downto 0);
		desbordamiento : out std_logic;
		interrupcion : out std_LOGIC;
		estado   : out std_logic;
		conteo : out std_logic_vector (31 downto 0));

end entity;

architecture arch of Circuito_para_pruebas is

-- signals

signal reset_sinc_circuito_test : std_logic;
signal reset_sinc_bus : std_LOGIC;
signal reset_sinc_generador_dato : std_LOGIC;
signal pulso_inicio: std_Logic;
signal en_contador_tiempo, fin_contador_tiempo : std_LOGIC;
signal en_contador_tiempo_sinc : std_Logic;
signal clear_contador_eventos : std_Logic;
signal dato_asincronico : std_LOGIC;
signal rco_contador_eventos : std_LOGIC;
signal desbordamiento_signal : std_LOGIC;

-- componentes

Component Sincroniza_RST is 
Port( 	
		ACLR		:	IN		std_logic;			-- reset asincronico activo en '1'
		Clock		:	IN		std_logic;
		EN			:	IN		std_logic;        -- activo en '1'
		SCLR     : 	OUT 	std_logic);       -- salida activa en '1'
END component;

component Sincronizador IS
PORT(
	Reset  	: IN	Std_Logic; -- activo en '1'
	CLK		: IN	Std_Logic;
	X	  		: IN    Std_Logic;
	Salida 	: OUT   Std_Logic);
END component;

Component DFP IS
PORT(
	Reset  	: IN	Std_Logic; -- activo en '1'
	CLK		: IN	Std_Logic;
	X			: IN    Std_Logic;
	Pulso		: OUT   Std_Logic);
END component;

component Contador_NBits IS
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
END component;

component Contador_32bits IS

PORT(
	CLK     : IN     Std_Logic;
	ACLR    : IN     Std_Logic;  -- asincronico y activo en '1'
	SCLR    : IN     Std_Logic := '0'; -- sincrónico y activo en '1'
 	Enable  : IN     Std_Logic := '0'; -- activo en '1'
 	Load    : IN     Std_Logic := '0';  -- sincrónico y activo en '1'
 	Dato    : IN     Std_Logic_Vector (31 downto 0) := (Others => '0');
 	RCO     : OUT    Std_Logic;
 	Q       : OUT    Std_Logic_Vector (31 downto 0));
END component;


Component Circuito_test is
port(	dato, clk, clr, clr_s, en : in std_logic; -- clr y clr_s activos en '1'
		rco : out std_LOGIC;
	   eventos : out std_logic_vector(15 downto 0));
end component;

-- end component

begin

-- Dominio de reloj clk_bus

Sincronizador_reset_reloj_bus : Sincroniza_RST 
	Port map( 	
		ACLR		=> reset,
		Clock		=> clk_bus,
		EN			=> '1',
		SCLR     => reset_sinc_bus);

Detector_frente_positivo : DFP 
	PORT map
	(
		Reset  	=> reset_sinc_bus,
		CLK		=> clk_bus,
		X			=> iniciar,
		Pulso		=> pulso_inicio);
	
-- latch SR para generar la señal en_contador_tiempo

process(pulso_inicio, reset_sinc_bus, fin_contador_tiempo)
begin
	if(pulso_inicio = '1') then en_contador_tiempo <= '1';
		elsif( (reset_sinc_bus or fin_contador_tiempo) = '1') then en_contador_tiempo <= '0';
	end if;
end process;
	
-- contador de tiempo	
	
Contador_tiempo : Contador_32bits
PORT map(
	CLK     => clk_bus,
	ACLR    => reset_sinc_bus,
	SCLR    => '0',
 	Enable  => en_contador_tiempo,
 	Load    => pulso_inicio,
 	Dato    => base_conteo,
	-- para puebas
	Q  => conteo,
 	RCO     => fin_contador_tiempo);

-- Dominio de reloj clk_circuito_test
	
-- Sincronizador de reset, dominio de reloj clk_circuito_test
	
Sincronizador_reset_circuito_test : Sincroniza_RST
Port map( 	
		ACLR		=> reset,
		Clock		=> clk_circuito_test,
		EN			=> '1',
		SCLR     => reset_sinc_circuito_test);

-- Sincronizador para la señal en_contador_tiempo, esta señal cruza del dominio de reloj
-- clk_bus al dominio clk_circuito_test 

Sincronizador_senial_en_contador_tiempo : Sincronizador
PORT map(
	Reset  	=> reset_sinc_circuito_test,
	CLK		=> clk_circuito_test,
	X	  		=> en_contador_tiempo,
	Salida 	=> en_contador_tiempo_sinc);

	
-- DFP para generar la señal clear del contador de eventos del circuito test

Detector_frente_positivo_circuito_test : DFP 
	PORT map
	(
		Reset  	=> reset_sinc_circuito_test,
		CLK		=> clk_circuito_test,
		X			=> en_contador_tiempo_sinc,
		Pulso		=> clear_contador_eventos);	
		
-- circuito test

Circuito_test_metaestabilidad : Circuito_test
port map(	
			dato 	=> dato_asincronico,
			clk	=> clk_circuito_test, 
			clr	=> reset_sinc_circuito_test, 
			clr_s => clear_contador_eventos,
			en 	=> en_contador_tiempo_sinc,
		   rco   => rco_contador_eventos,
			eventos => eventos_metaestables);
			
-- Lógica para generar la señal desbordamiento (Latch SR)
process (reset_sinc_circuito_test, clear_contador_eventos, rco_contador_eventos)
begin
	if (rco_contador_eventos = '1') then desbordamiento_signal <= '1';
		elsif (clear_contador_eventos = '1' or reset_sinc_circuito_test = '1') then desbordamiento_signal <= '0';
	end if;
end process;			
	
-- Dominio de reloj clk_generador_dato

-- Sincronizador para la señal de reset en el dominio de reloj clk_generador_dato

Sincronizador_reset_generador_dato : Sincroniza_RST
Port map( 	
		ACLR		=> reset,
		Clock		=> clk_generador_dato,
		EN			=> '1',
		SCLR     => reset_sinc_generador_dato);

-- Generador de dato asincrónico (FFT) genera la señal dato_asincronico

process(clk_generador_dato, reset_sinc_generador_dato)
begin
	if(reset_sinc_generador_dato = '1')  then dato_asincronico <= '0';
		elsif(clk_generador_dato'event and clk_generador_dato = '1') then dato_asincronico <= not(dato_asincronico);
	end if;
end process;

-- Señal de estado, mientras esta señal es '1' el experimento esta corriendo, cuendo pasa a '0' indica que
-- finalizó el experimento y puede leerse en la salida del contador de eventos el número de fallos 
-- detectados

estado <= en_contador_tiempo_sinc;

interrupcion <= en_contador_tiempo_sinc and (not desbordamiento_signal) and habilitar_interrupcion;

desbordamiento <= desbordamiento_signal;

end arch;


