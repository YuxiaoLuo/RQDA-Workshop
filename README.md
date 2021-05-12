# RQDA (R Qualitative Data Analysis) Workshop

A releated blog post of this workshop has been posted on [GCDI Tagging the Tower](https://digitalfellows.commons.gc.cuny.edu/2020/10/16/use-rqda-for-qualitative-data-analysis/).

# Appendix
As RQDA package has been removed from CRAN repository and you cannot use it with the new R version, this repository is intended to offer the necessary dependencies (packages and softwares) to those who still wants to use RQDA in R. Following the instructions below, you can manually install RQDA in your R 3.6.3 (2020-02-29) and use it like before.
Please find the RQDA official website: https://rqda.r-forge.r-project.org/

## Installing RQDA (Windows) 
1. Check R version: R version 3.6.3 (2020-02-29); RStudio version doesn't matter; You can adjust R from "Tools/Global Options" in RStudio setting if you have more than two R version in one computer. 
2. Install Rtools35 (don't install the newest Rtools40): https://cran.r-project.org/bin/windows/Rtools/history.html
	After installing Rtools35, run the command below: writeLines('PATH="${RTOOLS35_HOME}\\usr\\bin;${PATH}"', con = "~/.Renviron"
3. Go to SourceForge.net to download GTK+, use the link below (or download from the uploaded files above) https://sourceforge.net/projects/gladewin32/files/gtk%2B-win32-runtime/2.10.11/gtk-2.10.11-win32-1.exe/download?use_mirror=versaweb&modtime=1175123376&big_mirror=0 
4. The following 3 packages can be downloaded from CRAN directly: install.packages(c("RGtk2", “cairoDevice", “DBI”))
5. The following 4 packages were delisted from CRAN, please download from the uploaded files above and copy-paste the 4 folders to your personal R library (use command “.libPaths()” in Rstudio console to see the library location, ex., "C:\Users\Henry\Documents\R\win-library\3.6"). The four packages are: a. gWidgets; b. gWidgetsRGtk2; c. RQDA; d. RSQLite

## Installing RQDA (Mac)
1. Check R version: R version 3.6.3 (2020-02-29); RStudio version doesn't matter; You can adjust R from "Tools/Global Options" in RStudio setting if you have more than two R version in one computer. 
3. Rtools is only for Windows, Mac doesn’t need it. 
4. Go to SourceForge.net to download GTK+ for Mac osx, use the link below: https://sourceforge.net/projects/gtk-osx/ 
5. The following 3 packages can be downloaded from CRAN directly:  install.packages(c("RGtk2", “cairoDevice", “DBI”))
6. The following 4 packages were delisted from CRAN, please download from the uploaded files above and copy-paste the 4 folders to your personal R library (Use command “.libPaths()” in Rstudio console to see the library location, i.e. “desktop/Macintosh HD/Library/Frameworks/R.framework/Resources/library”) The four packages are: a. gWidgets; b. gWidgetsRGtk2; c. RQDA; d. RSQLite.

## Summary: 
RQDA package dependencies: DBI (https://cran.r-project.org/web/packages/DBI/index.html); RSQLite (https://cran.r-project.org/web/packages/RSQLite/index.html) doesn’t support R 4.0+; gWidgets (https://cran.r-project.org/web/packages/gWidgets/index.html) delisted 2019; gWidgetsRGtk2 (https://cran.r-project.org/web/packages/gWidgetsRGtk2/index.html) delisted 2019. 
  
  
