list.of.packages <- c("rsvg", "RCurl")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages, repos = "http://cran.us.r-project.org")

library(rsvg)
library(png)
library(RCurl)

svg.file<-list.files(pattern = ".svg", recursive = TRUE)
name<-basename(svg.file)

#-----read svg #256x256-----
bitmap2<-rsvg(svg.file, height = 256, width = 213)
print("256x256 svg loaded")
#convert to png
png::writePNG(bitmap2, paste("png/", gsub(".svg", "", name), "_256x256.png", sep=""))
print("256x256 png written")

txt <- base64Encode(readBin(paste("png/", gsub(".svg", "", name), "_256x256.png", sep=""), "raw", file.info(paste("png/", gsub(".svg", "", name), "_256x256.png", sep=""))[1, "size"]), "txt")
txt<-as.character(txt)
write.table(txt, file = paste("png/", gsub(".svg", "", name), "_256x256.txt", sep=""), row.names = FALSE, col.names = FALSE, quote = FALSE)
print("base64 written to txt file")

#-----read svg #128x128-----
bitmap2<-rsvg(svg.file, height = 125, width = 104)
print("128x128 svg loaded")
#convert to png
png::writePNG(bitmap2, paste("png/", gsub(".svg", "", name), "_128x128.png", sep=""))
print("128x128 png written")

txt <- base64Encode(readBin(paste("png/", gsub(".svg", "", name), "_128x128.png", sep=""), "raw", file.info(paste("png/", gsub(".svg", "", name), "_128x128.png", sep=""))[1, "size"]), "txt")
txt<-as.character(txt)
write.table(txt, file = paste("png/", gsub(".svg", "", name), "_128x128.txt", sep=""), row.names = FALSE, col.names = FALSE, quote = FALSE)
print("base64 written to txt file")

#-----read svg #64x64------
bitmap2<-rsvg(svg.file, height = 64, width = 53)
print("64x64 svg loaded")
#convert to png
png::writePNG(bitmap2, paste("png/", gsub(".svg", "", name), "_64x64.png", sep=""))
print("64x64 png written")

txt <- base64Encode(readBin(paste("png/", gsub(".svg", "", name), "_64x64.png", sep=""), "raw", file.info(paste("png/", gsub(".svg", "", name), "_64x64.png", sep=""))[1, "size"]), "txt")
txt<-as.character(txt)
write.table(txt, file = paste("png/", gsub(".svg", "", name), "_64x64.txt", sep=""), row.names = FALSE, col.names = FALSE, quote = FALSE)
print("base64 written to txt file")


#----read svg #48x48------
bitmap2<-rsvg(svg.file, height = 48, width = 40)
print("48x48 svg loaded")
#convert to png
png::writePNG(bitmap2, paste("png/", gsub(".svg", "", name), "_48x48.png", sep=""))
print("48x48 png written")

txt <- base64Encode(readBin(paste("png/", gsub(".svg", "", name), "_48x48.png", sep=""), "raw", file.info(paste("png/", gsub(".svg", "", name), "_48x48.png", sep=""))[1, "size"]), "txt")
txt<-as.character(txt)
write.table(txt, file = paste("png/", gsub(".svg", "", name), "_48x48.txt", sep=""), row.names = FALSE, col.names = FALSE, quote = FALSE)
print("base64 written to txt file")

#----read svg #40x40------
bitmap2<-rsvg(svg.file, height = 40, width = 33)
print("40x40 svg loaded")
#convert to png
png::writePNG(bitmap2, paste("png/", gsub(".svg", "", name), "_40x40.png", sep=""))
print("40x40 png written")

txt <- base64Encode(readBin(paste("png/", gsub(".svg", "", name), "_40x40.png", sep=""), "raw", file.info(paste("png/", gsub(".svg", "", name), "_40x40.png", sep=""))[1, "size"]), "txt")
txt<-as.character(txt)
write.table(txt, file = paste("png/", gsub(".svg", "", name), "_40x40.txt", sep=""), row.names = FALSE, col.names = FALSE, quote = FALSE)
print("base64 written to txt file")

#----read svg #32x32------
bitmap2<-rsvg(svg.file, height = 32, width = 27)
print("32x32 svg loaded")
#convert to png
png::writePNG(bitmap2, paste("png/", gsub(".svg", "", name), "_32x32.png", sep=""))
print("32x32 png written")

txt <- base64Encode(readBin(paste("png/", gsub(".svg", "", name), "_32x32.png", sep=""), "raw", file.info(paste("png/", gsub(".svg", "", name), "_32x32.png", sep=""))[1, "size"]), "txt")
txt<-as.character(txt)
write.table(txt, file = paste("png/", gsub(".svg", "", name), "_32x32.txt", sep=""), row.names = FALSE, col.names = FALSE, quote = FALSE)
print("base64 written to txt file")

#----read svg #24x24------
bitmap2<-rsvg(svg.file, height = 24, width = 20)
print("24x24 svg loaded")
#convert to png
png::writePNG(bitmap2, paste("png/", gsub(".svg", "", name), "_24x24.png", sep=""))
print("24x24 png written")

txt <- base64Encode(readBin(paste("png/", gsub(".svg", "", name), "_24x24.png", sep=""), "raw", file.info(paste("png/", gsub(".svg", "", name), "_24x24.png", sep=""))[1, "size"]), "txt")
txt<-as.character(txt)
write.table(txt, file = paste("png/", gsub(".svg", "", name), "_24x24.txt", sep=""), row.names = FALSE, col.names = FALSE, quote = FALSE)
print("base64 written to txt file")

#----read svg #16x16------
bitmap2<-rsvg(svg.file, height = 16, width = 13)
print("16x16 svg loaded")
#convert to png
png::writePNG(bitmap2, paste("png/", gsub(".svg", "", name), "_16x16.png", sep=""))
print("16x16 png written")

txt <- base64Encode(readBin(paste("png/", gsub(".svg", "", name), "_16x16.png", sep=""), "raw", file.info(paste("png/", gsub(".svg", "", name), "_16x16.png", sep=""))[1, "size"]), "txt")
txt<-as.character(txt)
write.table(txt, file = paste("png/", gsub(".svg", "", name), "_16x16.txt", sep=""), row.names = FALSE, col.names = FALSE, quote = FALSE)
print("base64 written to txt file")




print ("==============Batch Successful==================")




