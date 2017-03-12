# DocRR

This repository contains a series of templates for creating HTML and PDF documents using the style themes employed by NZ Department of Conservation (DOC).

In order for PDF output to work you need to make sure you have a LATEX distribution installed. [MIKTEX](https://miktex.org/) is the most common distribution to use.

##Installing the package

First off install the ``devtools`` package if you haven't already.

``install.packages("devtools")``

Now install the ``DocRR`` package using ``devtools::install_github('ogansell/DocRR')``.

##Creating a template in RStudio

RStudio supports these templates natively. 

If using RStudio you can now load pre-made templates for outputting analysis and reporting in HTML or PDF format. To do this go to
File>New File and select 'RMarkdown'

![](rmarkdown1.bmp)


From here you can now load any one of the templates by selecting 
RMarkdown>From Template and selecting any one of the templates under 'DocRR'.


![](rmarkdown2.bmp)



Select the template you want to load, give it a name and save it. 


![](rmarkdown3.bmp)



Important to note here is that when you save your file a folder structure for your file is automatically made. This is because the templates have some extra files they are dependant on in order to compile.


![](rmarkdown4.bmp)



You've now got a template for producing a pdf report to begin working on.
Press the knit button to have a look at what it produces. 


![](rmarkdown7.bmp)


##Creating a template outside of RStudio


If you're not using RStudio it's still easy to use these templates.


To create a new document use ``rmarkdown::draft("my_article.Rmd", template = "doc_article", package = "DocRR")``.

To compile use``rmarkdown::render("my_article/my_article.Rmd", template = "doc_article", package = "DocRR")``.

