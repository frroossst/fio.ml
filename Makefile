help:
	@echo "fiona"
	@echo "===== a file IO based language ====="
	@echo "make help"
	@echo "    show this help"
	@echo "make build"
	@echo "    compile and link the project"
	@echo "make run"
	@echo "    run the project"
	@echo "make clean"
	@echo "    clean the project"

compile:
	ocamlc -o fiona -I opcodes opcodes/*.ml -I runtime runtime/*.ml -I compiler compiler/*.ml main.ml

build:
	ocamlopt -I compiler/ -I opcodes/ -I runtime/ -c compiler/* opcodes/* runtime/* main.ml
	ocamlopt -I compiler/ -I opcodes/ -I runtime/ -o fiona compiler/*.cmx opcodes/*.cmx runtime/*.cmx compiler/*.cmi opcodes/*.cmi runtime/*.cmi main.cmx

run:
	./fiona

clean:
	rm compiler/*.cmx compiler/*.cmi compiler/*.o opcodes/*.cmx opcodes/*.cmi opcodes/*.o runtime/*.cmx runtime/*.cmi runtime/*.o fiona