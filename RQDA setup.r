###################################################
# Intro to RQDA (R Qualitative Data Analysis)
# Yuxiao Luo 
# https://github.com/YuxiaoLuo
# 09/25/2020


# check R version: R version 3.6.3 (2020-02-29); RStudio version doesn't matter
# you can adjust it from "Tools/Global Options" in R setting if you 
# have more than two R version in one computer
print(version)

setwd("D:/RQDA")

# 1.
# Install Rtools35 (don't install the newest Rtools40)
# https://cran.r-project.org/bin/windows/Rtools/history.html

# After installing Rtools35, run the command below 
# writeLines('PATH="${RTOOLS35_HOME}\\usr\\bin;${PATH}"', con = "~/.Renviron")

# 2.
# Go to SourceForge.net to download GTK+, use the link below:
# https://sourceforge.net/projects/gladewin32/files/gtk%2B-win32-runtime/2.10.11/gtk-2.10.11-win32-1.exe/download?use_mirror=versaweb&modtime=1175123376&big_mirror=0

# 3.
# the following 3 packages can be downloaded from CRAN directly
# install.packages("RGtk2")
# install.packages("cairoDevice")
# install.packages("DBI")

# 4.
# the following 3 packages were delisted from CRAN, please go to shared 
# folder to copy-paste the 4 folders to your personal R library (ex., "C:\Users\Henry\Documents\R\win-library\3.6")
# 1. gWidgets
# 2. gWidgetsRGtk2
# 3. RQDA
# 4. RSQLite
# Note: don't change the folder name (they are case-sensitive)
# Well done, let's run RQDA

library(RQDA)
RQDA()








