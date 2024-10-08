entity circuito is
	port(a, b, c : in bit; sa1, sa2 : out bit);
end circuito;

architecture behav of circuito is
	-- Primeiro circuito (primeiro dígito)
	signal s1: bit;
	signal s2: bit;
	signal s3: bit;
	-- Segundo circuito (segundo dígito)
	signal s4: bit;
	signal s5: bit;
	signal s6: bit;
	signal s7: bit;
	signal s8: bit;
	component PortaAnd is 
		port(en1, en2, en3 : in bit; saida_and: out bit);
	end component;
	component PortaAnd2 is 
		port(en1, en2 : in bit; saida_and: out bit);
	end component;
	component PortaOr4 is 
		port(input1, input2, input3, input4: in bit; saida_or : out bit);
	end component;
begin 
	-- Primeiro circuito
	u1: PortaAnd port map(en1 => not(a), en2 => b, en3 => c, saida_and => s1);
	u2: PortaAnd port map(en1 => a, en2 => b, en3 => not(c), saida_and => s2);
	u3: PortaAnd2 port map(en1 => a, en2 => b, saida_and => s3);
	u4: PortaOr4 port map(input1 => s1, input2 => s2, input3 => s3, input4 => s8, saida_or => sa2);
	
	-- Segundo circuito
	u5: PortaAnd port map(en1 => not(a), en2 => not(b), en3 => c, saida_and => s4);
	u6: PortaAnd port map(en1 => not(a), en2 => b, en3 => not(c), saida_and => s5);
	u7: PortaAnd port map(en1 => a, en2 => not(b), en3 => not(c), saida_and => s6);
	u8: PortaAnd port map(en1 => a, en2 => b, en3 => c, saida_and => s7);
	u9: PortaOr4 port map(input1 => s4, input2 => s5, input3 => s6, input4 => s7, saida_or => sa1);
	
	u10: PortaAnd port map(en1 => a, en2 => not(b), en3 => c, saida_and => s8);
	
end architecture behav;

