README: index.rmd
	Rscript "extract.R"
	Rscript -e "bookdown::render_book('index.rmd')"
