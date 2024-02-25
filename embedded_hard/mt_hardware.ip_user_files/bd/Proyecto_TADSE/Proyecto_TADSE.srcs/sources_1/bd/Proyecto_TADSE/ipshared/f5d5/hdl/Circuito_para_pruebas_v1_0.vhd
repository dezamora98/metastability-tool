library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Circuito_para_pruebas_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 4
		--C_S00_AXI_ADDR_WIDTH	: integer	:= 3
	);
	port (
		-- Users to add ports here
		
		clk_generador_dato : in std_logic;
		clk_circuito_test : in std_logic;
		interrupcion :out std_logic;
		conteo : out std_logic_vector(31 downto 0);

		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic
	);
end Circuito_para_pruebas_v1_0;

architecture arch_imp of Circuito_para_pruebas_v1_0 is

    -- signals 
    signal reset_signal : std_logic;
    signal inicio_signal : std_logic;
    signal habilitar_interrupcion_signal : std_logic;
    signal base_conteo_signal : std_logic_vector(31 downto 0);
    signal desbordamiento_signal: std_logic;
    signal estado_signal : std_logic;
    signal interrupcion_signal : std_logic;
    signal eventos_metaestables_signal : std_logic_vector(15 downto 0);
    signal conteo_signal : std_logic_vector(31 downto 0);
    --

	-- component declaration
	component Circuito_para_pruebas_v1_0_S00_AXI is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 3
		);
		port (
		
		-- user ports
		inicio : out std_logic;
		habilitar_interrupcion : out std_logic;
        base_conteo : out std_logic_vector(31 downto 0);
        eventos_metaestables   : in std_logic_vector (15 downto 0);
        desbordamiento    : in std_logic;
        interrupcion    : in std_logic;
        estado   : in std_logic;
        conteo : in std_logic_vector(31 downto 0);
		--
		
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component Circuito_para_pruebas_v1_0_S00_AXI;
	
	
    component Circuito_para_pruebas is
    
        port 
        (
            clk_bus, clk_circuito_test, clk_generador_dato    : in std_logic;
            reset       : in std_logic; -- activo en 1 -- reset asincrónico
            iniciar    : in std_LOGIC;
            habilitar_interrupcion : std_LOGIC; -- '1' habilita la salida de interrupción
            base_conteo     : in std_Logic_Vector(31 downto 0);
            eventos_metaestables    : out std_logic_vector(15 downto 0);
            desbordamiento : out std_logic;
            interrupcion : out std_LOGIC;
            estado   : out std_logic;
            conteo : out std_logic_vector(31 downto 0));
    
    end component;

begin

-- Instantiation of Axi Bus Interface S00_AXI
Circuito_para_pruebas_v1_0_S00_AXI_inst : Circuito_para_pruebas_v1_0_S00_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH
	)
	port map (
	   -- user logic
	   inicio => inicio_signal,
	   habilitar_interrupcion => habilitar_interrupcion_signal,
       base_conteo => base_conteo_signal,
       eventos_metaestables    => eventos_metaestables_signal, 
       desbordamiento    => desbordamiento_signal, 
       interrupcion    => interrupcion_signal, 
       estado    => estado_signal,
       conteo => conteo_signal,
	   --
	
		S_AXI_ACLK	=> s00_axi_aclk,
		S_AXI_ARESETN	=> s00_axi_aresetn,
		S_AXI_AWADDR	=> s00_axi_awaddr,
		S_AXI_AWPROT	=> s00_axi_awprot,
		S_AXI_AWVALID	=> s00_axi_awvalid,
		S_AXI_AWREADY	=> s00_axi_awready,
		S_AXI_WDATA	=> s00_axi_wdata,
		S_AXI_WSTRB	=> s00_axi_wstrb,
		S_AXI_WVALID	=> s00_axi_wvalid,
		S_AXI_WREADY	=> s00_axi_wready,
		S_AXI_BRESP	=> s00_axi_bresp,
		S_AXI_BVALID	=> s00_axi_bvalid,
		S_AXI_BREADY	=> s00_axi_bready,
		S_AXI_ARADDR	=> s00_axi_araddr,
		S_AXI_ARPROT	=> s00_axi_arprot,
		S_AXI_ARVALID	=> s00_axi_arvalid,
		S_AXI_ARREADY	=> s00_axi_arready,
		S_AXI_RDATA	=> s00_axi_rdata,
		S_AXI_RRESP	=> s00_axi_rresp,
		S_AXI_RVALID	=> s00_axi_rvalid,
		S_AXI_RREADY	=> s00_axi_rready
	);

	-- Add user logic here

    
Logica_usuario : Circuito_para_pruebas

	port map 
	(
		clk_bus   => s00_axi_aclk,
		clk_circuito_test   => clk_circuito_test, 
        clk_generador_dato	=> clk_generador_dato,
		reset     => reset_signal,	   
		iniciar   => inicio_signal,
		habilitar_interrupcion    => habilitar_interrupcion_signal,
		base_conteo    => base_conteo_signal, 
		eventos_metaestables    => eventos_metaestables_signal, 
		desbordamiento    => desbordamiento_signal, 
		interrupcion    => interrupcion_signal, 
		estado    => estado_signal,
		conteo => conteo_signal);
		
		reset_signal <= not (s00_axi_aresetn);
		
		interrupcion <= interrupcion_signal;
		conteo <= conteo_signal;
		
     
	-- User logic ends

end arch_imp;
