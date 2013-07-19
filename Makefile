LATEXPROGRAM=lualatex --shell-escape
RM=/bin/rm -f

SRC=flore.tex
AUXFILES=*.log flore.aux *.toc *.idx *.out *.ind *.upa *.upb *.xdy
PACKAGEFILES=compteurs.aux *.synctex.gz *.pdf

all: florea4 florea5 florea6 florea7

florea4: $(SRC)
	$(LATEXPROGRAM) "\newif\ifpapieraquatre\newif\ifpapieracinq\newif\ifpapierasix\newif\ifpapierasept\papieraquatretrue\papieracinqfalse\papierasixfalse\papieraseptfalse\input{$(SRC)}"
	$(LATEXPROGRAM) "\newif\ifpapieraquatre\newif\ifpapieracinq\newif\ifpapierasix\newif\ifpapierasept\papieraquatretrue\papieracinqfalse\papierasixfalse\papieraseptfalse\input{$(SRC)}"
	@mv flore.pdf florea4.pdf

florea5: $(SRC)
	$(LATEXPROGRAM) "\newif\ifpapieraquatre\newif\ifpapieracinq\newif\ifpapierasix\newif\ifpapierasept\papieraquatrefalse\papieracinqtrue\papierasixfalse\papieraseptfalse\input{$(SRC)}"
	$(LATEXPROGRAM) "\newif\ifpapieraquatre\newif\ifpapieracinq\newif\ifpapierasix\newif\ifpapierasept\papieraquatrefalse\papieracinqtrue\papierasixfalse\papieraseptfalse\input{$(SRC)}"
	@mv flore.pdf florea5.pdf

florea6: $(SRC)
	$(LATEXPROGRAM) "\newif\ifpapieraquatre\newif\ifpapieracinq\newif\ifpapierasix\newif\ifpapierasept\papieraquatrefalse\papieracinqfalse\papierasixtrue\papieraseptfalse\input{$(SRC)}"
	$(LATEXPROGRAM) "\newif\ifpapieraquatre\newif\ifpapieracinq\newif\ifpapierasix\newif\ifpapierasept\papieraquatrefalse\papieracinqfalse\papierasixtrue\papieraseptfalse\input{$(SRC)}"
	@mv flore.pdf florea6.pdf

florea7: $(SRC)
	$(LATEXPROGRAM) "\newif\ifpapieraquatre\newif\ifpapieracinq\newif\ifpapierasix\newif\ifpapierasept\papieraquatrefalse\papieracinqfalse\papierasixfalse\papierasepttrue\input{$(SRC)}"
	$(LATEXPROGRAM) "\newif\ifpapieraquatre\newif\ifpapieracinq\newif\ifpapierasix\newif\ifpapierasept\papieraquatrefalse\papieracinqfalse\papierasixfalse\papierasepttrue\input{$(SRC)}"
	@mv flore.pdf florea7.pdf

clean:
	@$(RM) $(AUXFILES)

mrproper:
	@$(RM) $(AUXFILES)	
	@$(RM) $(PACKAGEFILES)

