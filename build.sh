mkdir -p bin/
clang -o bin/foo.o asm/foo.s -c
clang -o bin/foo_1.o asm/foo_1.s -c
clang -o bin/foo_2.o asm/foo_2.s -c
clang -o bin/foo_3.o asm/foo_3.s -c
clang -o bin/foo_4.o asm/foo_4.s -c
clang -o bin/foo_5.o asm/foo_5.s -c
clang -o bin/foo_6.o asm/foo_6.s -c
clang -o bin/foo_7.o asm/foo_7.s -c
clang++ -o bin/main.o main.cc -c
clang++ -o bin/main bin/main.o bin/foo.o bin/foo_1.o bin/foo_2.o bin/foo_3.o bin/foo_4.o bin/foo_5.o bin/foo_6.o bin/foo_7.o -lbenchmark
