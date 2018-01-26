list.of.packages <- c("rsvg")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)

library(rsvg)
#read svg
#256x256
h<-256
w<-213
bitmap2<-rsvg("svg/Chemical_Original.svg", height = h, width = w)
print("256x256 svg loaded")
png::writePNG(bitmap2, paste("png/Chemical_Original_256x256.png", sep=""))
print("256x256 png written")


print ("SCRIPT SUCCESSFUL")