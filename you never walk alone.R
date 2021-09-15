setwd("C:\\Users\\USER\\Dropbox\\01. 박사과정\\공동연구\\성지재영_논문작성\\03. 농정원 데이터 분석\\01. DATA")
#install.packages("readstata13")
library(readstata13)

data <- read.dta13("data_0915.dta")

#install - process macro
#install.packages('devtools', repos='http://cran.rstudio.com/')
library(devtools)
#devtools::install_github("cardiomoon/processR")

library(processR)
sort(pmacro$no)

labels=list(X="sat",M="eff","app",Y="per")
pmacroModel(6,labels=labels)
statisticalDiagram(6)

## model 6  - 잘 안됨
##mod6result <- model6(iv = "sat", dv = "per", med1 = "eff", med2 = "app", data = data)

model=tripleEquation(X="sat",M="eff",M2="app",Y="per")
cat(model)

model=tripleEquation(X="frame",M="justify",Y="donate",moderator=moderator)
cat(model)
