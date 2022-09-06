all: out/apple

apple.o: apple.s
	as -o $@ $<

apple: apple.o
	ld -o $@ $<

out/apple: apple
	mkdir -p out
	cp apple out/
