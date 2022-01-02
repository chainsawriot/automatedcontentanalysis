require(condensebib)

all_rmd <- list.files(".", "rmd")

reduce_bib(all_rmd, "~/dev/dotfiles/bib.bib", "./book.bib")
