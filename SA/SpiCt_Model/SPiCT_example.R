
install.packages("Rcpp")
library(usethis)
library(devtools)
install.packages("ellipse")
library(ellipse)
devtools::install_github("DTUAqua/spict/spict")
devtools::install_github("DTUAqua/spict/spict", ref = "1.2.8")

library(spict)

data(pol)
pol
plotspict.data(pol$lobster)
plotspict.ci(pol$lobster)

res <- fit.spict(pol$lobster)
plot(res)
res <- calc.osa.resid(res)
plotspict.diagnostic(res)
plotspict.catch(res)
plotspict.fb(res, ylim=c(0, 1.3), xlim=c(0, 300))

res <- retro(res, nretroyear = 4)
plotspict.retro(res)
as.l

#ahora leo mi dara
rm(list=ls())

setwd("C:/Users/mauricio.mardones/Documents/IFOP/Bibliografía/Data Poor/SPiCT")
dir()
erizo <- read.table("data_ex.txt", sep="", header = T)
erizo <- as.list(erizo)
class(erizo)
erizo

plotspict.data(erizo)
plotspict.ci(erizo)

inp <- check.inp(erizo)
inp$dtc

rese <- fit.spict(erizo)
plot(rese)
rese <- calc.osa.resid(rese)
plotspict.diagnostic(rese)
plotspict.catch(rese)
plotspict.biomass(rese)
plotspict.fb(rese, ylim=c(0, 2), xlim=c(0, 5000))
capture.output(summary(res))

res <- retro(res, nretroyear = 4)
plotspict.retro(res)


#clam ancud

claman <- read.table("data_ex_clam_ancud.txt", header = T)
claman <- as.list(claman)
claman <- as.numeric(claman)
glimpse(claman)
class(claman)
claman

plotspict.data(claman)
plotspict.ci(claman)

inp <- check.inp(claman)
inp$dtc
inp$catchunit <- "1000 t."
resc$opt$convergence

resc <- fit.spict(claman)
plot(resc)
resc <- calc.osa.resid(resc)
plotspict.diagnostic(resc)
plotspict.catch(resc)
plotspict.biomass(resc)
plotspict.fb(res, ylim=c(0, 1.3), xlim=c(0, 300))
capture.output(summary(res))

res <- retro(res, nretroyear = 4)
plotspict.retro(res)



#sard

sar <- read.table("data_ex_sar.txt", header = T)
sar <- as.list(sar)
sar <- as.numeric(sar)
glimpse(sar)
class(sar)
sar

plotspict.data(sar)
plotspict.ci(sar)

inp <- check.inp(sar)
inp$dtc
inp$catchunit <- "1000 t."
resc$opt$convergence

resc <- fit.spict(sar)
plot(resc)
resc <- calc.osa.resid(resc)
plotspict.diagnostic(resc)
plotspict.catch(resc)
plotspict.biomass(resc)
plotspict.fb(res, ylim=c(0, 1.3), xlim=c(0, 300))
capture.output(summary(res))

res <- retro(res, nretroyear = 4)
plotspict.retro(res)
