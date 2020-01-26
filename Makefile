README: readme.rmd
	Rscript -e "rmarkdown::render('readme.rmd', output_file = 'docs/index.html')"
