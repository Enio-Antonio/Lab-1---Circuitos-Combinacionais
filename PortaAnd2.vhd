entity PortaAnd2 is
	port(en1, en2: in bit; saida_and: out bit);
end PortaAnd2;

architecture behav of portaAnd2 is
begin
	saida_and <= en1 and en2;
end architecture behav;