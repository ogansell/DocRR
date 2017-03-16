# DocRR{.tabset .tabset-fade} 

This repository contains a series of templates for creating HTML and PDF documents in rmarkdown using the style themes employed by NZ Department of Conservation (DOC).



##Getting started

In order for PDF output to work you need to make sure you have a LATEX distribution installed. [MIKTEX](https://miktex.org/) is the most common distribution to use.

####Installing the package


First off install the ``devtools`` package if you haven't already.

``install.packages("devtools")``

Now install the ``DocRR`` package using ``devtools::install_github('ogansell/DocRR')``.

####Creating a template in RStudio


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


![](rmarkdown8.bmp)

####After installation


When making HTML pages a common intermediate step is to 'knit' your document to '.docx' format. This makes it easy to send to reviewers to get their input. The [webshot](https://cran.r-project.org/web/packages/webshot/vignettes/intro.html) is useful in this instance as it includes a screenshot of any htmlwidgets used in the knitted .docx file. It require installation of the PhantomJS software. This causes installation of the ``DocRR`` package to fail on older installations of R so it is recommended to install this manually after installing ``DocRR``. Do this by running the code ``webshot::install_phantomjs()``.


####Creating a template outside of RStudio



If you're not using RStudio it's still easy to use these templates.

Wrapper functions have been made to make it easy to load a template.

There is one function for each template:

``DocRR::article("myarticle.Rmd")``
``DocRR::article_book("myarticle.Rmd")``
``DocRR::report("myreport.Rmd")``
``DocRR::report_book("myreport.Rmd")``
``DocRR::plain_html("myplainwebpage.Rmd")``
``DocRR::tab_html("mytabbedwebpage.Rmd")``
``DocRR::indicator_html("myindicatorfactsheet.Rmd")``

To compile your document use ``rmarkdown::render("my_article/my_article.Rmd")``. Remember that you need to point it to the right directory.

####Extra information

You can now start making documents using these templates. It's important to remember that each template has been designed for a specific output (i.e. pdf articles or reports, plain webpages, web pages with tabbed layout or standardised pages for reporting on biodiversity indicators). Therefore the ``docarticle`` or ``docreport`` templates won't work for making webpages and web templates won't work for generating pdf's. Saying that, all of the templates will output to ``.docx`` (word format) provided some of the ``yaml`` metadata is altered (we'll cover this later). This is useful for giving reviewers who aren't familiar with ``R`` or ``rmarkdown`` a version of your document for editing and making comments. 


##Working with this package

The templates in this package have all of the style elements needed to adjust the colour of banners or fonts according to the DOC style guidelines. 

Functions have been defined to allow the user to easily choose whatever colour is required for banners and fonts in both web and pdf output. 

The banners and font colours are:


<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
.tg .tg-9hbo{font-weight:bold;vertical-align:top}
.tg .tg-amwm{font-weight:bold;text-align:center;vertical-align:top}
.tg .tg-yw4l{vertical-align:top}
</style>
<table class="tg">
<tr>
<th class="tg-9hbo">Colours</th>
<th class="tg-amwm" colspan="4">Functions</th>
</tr>
<tr>
<td class="tg-yw4l" rowspan="2"></td>
<td class="tg-amwm" colspan="3">Banners</td>
<td class="tg-amwm">Font</td>
</tr>
<tr>
<td class="tg-amwm">PDF Article</td>
<td class="tg-amwm">PDF Report</td>
<td class="tg-amwm">Web banner</td>
<td class="tg-amwm">Web font</td>
</tr>
<tr>
<td><span style="color:#59118E"><h4>Alpine</h4></span>

<img src="inst/banners/Alpine.png" width="150" height="50" /></td>
<td>``DocRR::Alpine``</td>
<td>``DocRR::Alpine_report``</td>
<td>``DocRR::Alpine_web``</td>
<td>``DocRR::font_Alpine``</td>
</tr>
<tr>
<td><span style="color:#008CB2"><h4>Lake</h4></span>

<img src="inst/banners/Lake.png" width="150" height="50" /></td>
<td>``DocRR::Lake``</td>
<td>``DocRR::Lake_report``</td>
<td>``DocRR::Lake_web``</td>
<td>``DocRR::font_Lake``</td>
</tr>
<tr>
<td><span style="color:#E0219E"><h4>Sunset</h4></span>

<img src="inst/banners/Sunset.png" width="150" height="50" /></td>
<td>``DocRR::Sunset``</td>
<td>``DocRR::Sunset_report``</td>
<td>``DocRR::Sunset_web``</td>
<td>``DocRR::font_Sunset``</td>
</tr>
<tr>
<td><span style="color:#DD5900"><h4>Fauna</h4></span>

<img src="inst/banners/Fauna.png" width="150" height="50" /> </td>
<td>``DocRR::Fauna``</td>
<td>``DocRR::Fauna_report``</td>
<td>``DocRR::Fauna_web``</td>
<td>``DocRR::font_Fauna``</td>
</tr>
<tr>
<td><span style="color:#6D2C00"><h4>Kiwi</h4></span>

<img src="inst/banners/Kiwi.png" width="150" height="50" /> </td>
<td>``DocRR::Kiwi``</td>
<td>``DocRR::Kiwi_report``</td>
<td>``DocRR::Kiwi_web``</td>
<td>``DocRR::font_Kiwi``</td>
</tr>
<tr>
<td><span style="color:#B5A80C"><h4>Honey</h4></span>

<img src="inst/banners/Honey.png" width="150" height="50" /></td>
<td>``DocRR::Honey``</td>
<td>``DocRR::Honey_report``</td>
<td>``DocRR::Honey_web``</td>
<td>``DocRR::font_Honey``</td>
</tr>
<tr>
<td><span style="color:#808080"><h4>Greyscale</h4></span>

<img src="inst/banners/Greyscale.png" width="150" height="50" /></td>
<td>``DocRR::Greyscale``</td>
<td>``DocRR::Greyscale_report``</td>
<td>``DocRR::Greyscale_web``</td>
<td>``DocRR::font_Greyscale``</td>
</tr>
</table>


