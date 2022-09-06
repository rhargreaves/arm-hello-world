all: apple

apple: apple.o
	ld -o apple apple.o \
		-lSystem \
		-syslibroot `xcrun -sdk macosx --show-sdk-path` \
		-e _start -arch arm64

apple.o: apple.s
	as -arch arm64 -o apple.o apple.s

clean:
	rm apple apple.o
.PHONY: clean
