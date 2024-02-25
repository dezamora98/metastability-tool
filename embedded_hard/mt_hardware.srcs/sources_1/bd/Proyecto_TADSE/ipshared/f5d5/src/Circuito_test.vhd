Library IEEE;
Use IEEE.std_logic_1164.all;

Entity Circuito_test is

port(	dato, clk, clr, clr_s, en : in std_logic; -- clr y clr_s activos en '1'
		rco : out std_Logic;
	   eventos : out std_logic_vector(15 downto 0)
);
end Circuito_test;

Architecture arch of Circuito_test is

-- Component

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

-- señales

signal q_dff1, q_dff2, q_dff3, q_dff4 : std_logic;

signal en_contador_de_eventos : std_Logic;

begin

-- DFF 1
Process(clk, clr)
begin
	if clr = '1' then q_dff1 <= '0';
	elsif clk'event and clk = '1' then q_dff1 <= dato;
	end if;
end process;

-- DFF 2
Process(clk, clr)
begin
	if clr = '1' then q_dff2 <= '0';
	elsif clk'event and clk = '1' then q_dff2 <= q_dff1;
	end if;
end process;

-- DFF 3
Process(clk, clr)
begin
	if clr = '1' then q_dff3 <= '0';
	elsif clk'event and clk = '0' then q_dff3 <= q_dff1;
	end if;
end process;

-- DFF 4
Process(clk, clr)
begin
	if clr = '1' then q_dff4 <= '0';
	elsif clk'event and clk = '0' then q_dff4 <= q_dff2 xor q_dff3;
	end if;
end process;

en_contador_de_eventos <= q_dff4 and en;

Contador_de_eventos : Contador_NBits 
GENERIC map (N => 16,
				M => 65536)
PORT map(
	CLK     => clk,
	ACLR    => clr,
	SCLR    => clr_s,
 	Enable  => en_contador_de_eventos,
 	Load    => '0',
 	Dato    => (Others => '0'),
	RCO 	  => rco,
 	Q       => eventos);

end arch;
