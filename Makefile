make: test_my_list rapport.pdf

rapport.pdf: rapport.tex
	pdflatex rapport.tex

test_my_list: my_list.ml test_my_list.ml
	ocamlc my_list.mli my_list.ml test_my_list.ml -o test_my_list

clean:
	rm -rf prog *.cmi *.cmo *~
