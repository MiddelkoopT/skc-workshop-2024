# Setup RStudio
# Run this R script only once in an environment to install packages.

options(repos = list(CRAN="http://cran.rstudio.com/"))

install.packages(c("tidyverse", "lubridate", "ratdat"))
install.packages("ggplot2")
install.packages(c("dbplyr", "RSQLite"))
