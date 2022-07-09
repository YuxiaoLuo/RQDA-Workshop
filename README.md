# RQDA (R Qualitative Data Analysis) Workshop
This is a workshop that can be taught as a stand-alone workshop to introduce the qualitative data analysis tool (RQDA) in R. A releated blog post of this workshop has been posted on [GCDI Tagging the Tower](https://digitalfellows.commons.gc.cuny.edu/2020/10/16/use-rqda-for-qualitative-data-analysis/).

## Credits
This workshop was written by [Yuxiao Luo](https://github.com/yuxiaoluo).

## Workshops
It was first taught at CUNY GC by Yuxiao Luo in the Fall of 2020 as a two hour online synchronous workshop.

Abstract:

> In this hands-on workshop, we will learn how to get started with qualitative data analysis in R using RQDA package. No prior R knowledge is required since RQDA has a 
> graphical user interface and can be used with mouse click. However, we highly recommend you learn the basics of R so you can use the functions/commands offered in the 
> package, which can improve your efficiency of data analysis. You can take our online Introduction to R workshop (https://github.com/GC-DRI/R). This workshop will be held 
> online with Zoom.

## Requirements

- Students should have R and RStudio installed, so they can install RQDA library in the local desktop and run it on RStudio.  
- It would benefit students if they came to this workshop with some basic notions of how RStudio works. Any 5-10 minute long tutorial on Youtube should be enough for that, whoever is leading the workshop should give them the link.
- RQDA installation becomes a little complicated after R 4.0.0 was released, so a complete installation instruciton is drafted to help walk through the process. Do not let that scare you, it's free and useful after all.

## Installation Instruction
As RQDA package has been removed from [CRAN repository](https://cran.r-project.org/) and you cannot use it with the new R version, this repository is intended to offer the necessary dependencies (packages and softwares) to those who still wants to use RQDA in R. Following the instructions below, you can manually install RQDA in your **R 3.6.3 (2020-02-29)** and use it like before.
Please click [RQDA official website](https://rqda.r-forge.r-project.org/) for more details.

### Installing RQDA (Windows) 
1. Check R version: **R version 3.6.3 (2020-02-29)**; RStudio version doesn't matter; You can change the R version from "Tools/Global Options" in RStudio setting if you have more than two R version in one computer. 
2. Install [**Rtools35**](https://cran.r-project.org/bin/windows/Rtools/history.html) and don't install the newest **Rtools40**.
	After installing Rtools35, run the command below: `writeLines('PATH="${RTOOLS35_HOME}\\usr\\bin;${PATH}"', con = "~/.Renviron)`
3. Go to SourceForge.net to download **GTK+**, use the [link](https://sourceforge.net/projects/gladewin32/files/gtk%2B-win32-runtime/2.10.11/gtk-2.10.11-win32-1.exe/download?use_mirror=versaweb&modtime=1175123376&big_mirror=0) or download from the uploaded files above.
4. The following 3 packages can be downloaded from CRAN directly: `install.packages(c("RGtk2", “cairoDevice", “DBI”))`.
  - Update on July 2022: if you see an error msg saying "‘RGtk2’ is not available (for R version 3.6.3)", the reason is that it and cairoDevice have been archived on CRAN but can be installed from a copy on Togaware.  
  - On Windows
    - `install.packages("https://access.togaware.com/RGtk2_2.20.36.2.zip", repos=NULL)`
    - `install.packages("https://access.togaware.com/cairoDevice_2.28.zip", repos=NULL)`
  - On Mac
    - `install.packages("https://access.togaware.com/RGtk2_2.20.36.2.tgz", repos=NULL)`
    - `install.packages("https://access.togaware.com/cairoDevice_2.28.tgz", repos=NULL)`
  - Update on Jul 2022: I also upload the compressed packages to the folder [Packages](https://github.com/YuxiaoLuo/RQDA-Workshop/tree/main/Packages), so you can download it from there and manually move them to the personal R library as specified in step 5 below.
  
5. The following 4 packages were delisted from CRAN, please download from the uploaded files above and copy-paste the 4 folders to your personal R library (use command `.libPaths()` in Rstudio console to see the library location, ex., `C:\Users\Henry\Documents\R\win-library\3.6`). The four packages are: a.`gWidgets`; b.`gWidgetsRGtk2`; c.`RQDA`; d.`RSQLite`.

### Installing RQDA (Mac)
1. Check R version: **R version 3.6.3 (2020-02-29)**; RStudio version doesn't matter;  You can change the R version from "Tools/Global Options" in RStudio setting if you have more than two R version in one computer. 
3. **Rtools** is only for Windows, Mac doesn’t need it. 
4. Go to SourceForge.net to download GTK+ for Mac osx, use the [link](https://sourceforge.net/projects/gtk-osx/).
5. The following 3 packages can be downloaded from CRAN directly:  `install.packages(c("RGtk2", “cairoDevice", “DBI”))`.
6. The following 4 packages were delisted from CRAN, please download from the uploaded files above and copy-paste the 4 folders to your personal R library (Use command `.libPaths()` in Rstudio console to see the library location, i.e. `desktop/Macintosh HD/Library/Frameworks/R.framework/Resources/library`). The four packages are: a.`gWidgets`; b.`gWidgetsRGtk2`; c.`RQDA`; d.`RSQLite`.

### RQDA package dependencies
- [DBI](https://cran.r-project.org/web/packages/DBI/index.html)
- [RSQLite](https://cran.r-project.org/web/packages/RSQLite/index.html) doesn’t support R 4.0+ Version
- [gWidgets](https://cran.r-project.org/web/packages/gWidgets/index.html) delisted from [CRAN](https://cran.r-project.org/) in 2019
- [gWidgetsRGtk2](https://cran.r-project.org/web/packages/gWidgetsRGtk2/index.html) delisted from [CRAN](https://cran.r-project.org/) in  2019
  
  
