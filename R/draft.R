#' @export
plain_html <- function(file){
  file <-paste(file)
  rmarkdown::draft(file, template = "dochtml_webpage", package = 'DocRR')
}

#' @export
indicator_html <- function(file){
  file <-paste(file)
  rmarkdown::draft(file, template = "dochtml_indicator_factsheet", package = 'DocRR')
}

#' @export
tab_html <- function(file){
  file <-paste(file)
  rmarkdown::draft(file, template = "doc_webpage_tab_layout", package = 'DocRR')
}

#' @export
article <- function(file){
  file <-paste(file)
  rmarkdown::draft(file, template = "docarticle", package = 'DocRR')
}

#' @export
article_book <- function(file){
  file <-paste(file)
  rmarkdown::draft(file, template = "docarticle_bookdown", package = 'DocRR')
}

#' @export
report_book <- function(file){
  file <-paste(file)
  rmarkdown::draft(file, template = "docreport_bookdown", package = 'DocRR')
}

#' @export
report<- function(file){
  file <-paste(file)
  rmarkdown::draft(file, template = "docreport", package = 'DocRR')
}

