entity PortaOr is
	port(input1, input2, input3: in bit; saida_or: out bit);
end PortaOr;

architecture behav of portaOr is
begin
	saida_or <= input1 or input2 or input3;
end architecture behav;