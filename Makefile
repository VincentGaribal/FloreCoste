LATEXPROGRAM=lualatex --shell-escape
INDEXPROGRAM=bash xindy.sh
RM=/bin/rm -f

SRC=flore
AUXFILES=*.log flore.aux *.toc *.idx *.out *.ind *.upa *.upb *.xdy
PACKAGEFILES=compteurs.aux *.synctex.gz *.pdf

all: florea4 florea5 florea6 florea7

florea4: $(SRC).tex
	$(LATEXPROGRAM) "\newif\ifpapieraquatre\newif\ifpapieracinq\newif\ifpapierasix\newif\ifpapierasept\papieraquatretrue\papieracinqfalse\papierasixfalse\papieraseptfalse\input{$(SRC).tex}"
	$(INDEXPROGRAM) vernaculaire
	$(INDEXPROGRAM) scientifique
	$(LATEXPROGRAM) "\newif\ifpapieraquatre\newif\ifpapieracinq\newif\ifpapierasix\newif\ifpapierasept\papieraquatretrue\papieracinqfalse\papierasixfalse\papieraseptfalse\input{$(SRC).tex}"
	@mv flore.pdf florea4.pdf

florea5: $(SRC).tex
	$(LATEXPROGRAM) "\newif\ifpapieraquatre\newif\ifpapieracinq\newif\ifpapierasix\newif\ifpapierasept\papieraquatrefalse\papieracinqtrue\papierasixfalse\papieraseptfalse\input{$(SRC).tex}"
	$(INDEXPROGRAM) vernaculaire
	$(INDEXPROGRAM) scientifique
	$(LATEXPROGRAM) "\newif\ifpapieraquatre\newif\ifpapieracinq\newif\ifpapierasix\newif\ifpapierasept\papieraquatrefalse\papieracinqtrue\papierasixfalse\papieraseptfalse\input{$(SRC).tex}"
	@mv flore.pdf florea5.pdf

florea6: $(SRC).tex
	$(LATEXPROGRAM) "\newif\ifpapieraquatre\newif\ifpapieracinq\newif\ifpapierasix\newif\ifpapierasept\papieraquatrefalse\papieracinqfalse\papierasixtrue\papieraseptfalse\input{$(SRC).tex}"
	$(INDEXPROGRAM) vernaculaire
	$(INDEXPROGRAM) scientifique
	$(LATEXPROGRAM) "\newif\ifpapieraquatre\newif\ifpapieracinq\newif\ifpapierasix\newif\ifpapierasept\papieraquatrefalse\papieracinqfalse\papierasixtrue\papieraseptfalse\input{$(SRC).tex}"
	@mv flore.pdf florea6.pdf

florea7: $(SRC).tex
	$(LATEXPROGRAM) "\newif\ifpapieraquatre\newif\ifpapieracinq\newif\ifpapierasix\newif\ifpapierasept\papieraquatrefalse\papieracinqfalse\papierasixfalse\papierasepttrue\input{$(SRC).tex}"
	$(INDEXPROGRAM) vernaculaire
	$(INDEXPROGRAM) scientifique
	$(LATEXPROGRAM) "\newif\ifpapieraquatre\newif\ifpapieracinq\newif\ifpapierasix\newif\ifpapierasept\papieraquatrefalse\papieracinqfalse\papierasixfalse\papierasepttrue\input{$(SRC).tex}"
	@mv flore.pdf florea7.pdf

clean:
	@$(RM) $(AUXFILES)

mrproper:
	@$(RM) $(AUXFILES)	
	@$(RM) $(PACKAGEFILES)

