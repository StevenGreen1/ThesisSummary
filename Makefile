.PHONY: clean

EXTRASTYS = abhepexpt.sty abhep.sty abmath.sty lineno.sty siunitx.sty SIunits.sty varwidth.sty

summary.pdf: summary.tex preamble.tex 
	@rm -f $(EXTRASTYS)
	unzip extrastyles.zip
	@rm -f summary.{aux,toc,lof,lot}
	(pdflatex summary && pdflatex summary && pdflatex summary) || rm -f $(EXTRASTYS) summary.pdf
	@rm -f summary.{aux,toc,lof,lot}
	@rm -f $(EXTRASTYS)
clean:
	@rm -f $(EXTRASTYS)
	@rm -f summary.pdf summary.log summary.aux
	@rm -f *.bbl *.blg *.lof *.cut
	@rm -f *.lot *.out *.toc
