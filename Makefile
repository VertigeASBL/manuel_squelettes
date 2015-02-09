formation_squelettes.pdf: formation_squelettes.md
	pandoc formation_squelettes.md --template template.latex -o formation_squelettes.pdf
