OCAMLBUILD = ocamlbuild -use-ocamlfind

default: main.native

main.native:
	$(OCAMLBUILD) main.native

run:
	./_build/main.native

clean:
	$(OCAMLBUILD) -clean
