list.of.packages <- c("rsvg", "RCurl")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages, repos = "http://cran.us.r-project.org")

library(rsvg)
library(png)
library(RCurl)


#-----read svg #256x256-----
bitmap2<-rsvg("svg/Chemical_Original.svg", height = 256, width = 213)
print("256x256 svg loaded")
#convert to png
png::writePNG(bitmap2, paste("png/Chemical_Original_256x256.png", sep=""))
print("256x256 png written")

txt <- base64Encode(readBin("png/Chemical_Original_256x256.png", "raw", file.info("png/Chemical_Original_256x256.png")[1, "size"]), "txt")
txt<-as.character(txt)
write.table(txt, file = "png/Chemical_Original_256x256.txt", row.names = FALSE, col.names = FALSE, quote = FALSE)
print("base64 written to txt file")

#-----read svg #128x128-----
bitmap2<-rsvg("svg/Chemical_Original.svg", height = 125, width = 104)
print("128x128 svg loaded")
#convert to png
png::writePNG(bitmap2, paste("png/Chemical_Original_128x128.png", sep=""))
print("128x128 png written")

txt <- base64Encode(readBin("png/Chemical_Original_128x128.png", "raw", file.info("png/Chemical_Original_128x128.png")[1, "size"]), "txt")
txt<-as.character(txt)
write.table(txt, file = "png/Chemical_Original_128x128.txt", row.names = FALSE, col.names = FALSE, quote = FALSE)
print("base64 written to txt file")

#-----read svg #64x64------
bitmap2<-rsvg("svg/Chemical_Original.svg", height = 64, width = 53)
print("64x64 svg loaded")
#convert to png
png::writePNG(bitmap2, paste("png/Chemical_Original_64x64.png", sep=""))
print("64x64 png written")

txt <- base64Encode(readBin("png/Chemical_Original_64x64.png", "raw", file.info("png/Chemical_Original_64x64.png")[1, "size"]), "txt")
txt<-as.character(txt)
write.table(txt, file = "png/Chemical_Original_64x64.txt", row.names = FALSE, col.names = FALSE, quote = FALSE)
print("base64 written to txt file")


#----read svg #48x48------
bitmap2<-rsvg("svg/Chemical_Original.svg", height = 48, width = 40)
print("48x48 svg loaded")
#convert to png
png::writePNG(bitmap2, paste("png/Chemical_Original_48x48.png", sep=""))
print("48x48 png written")

txt <- base64Encode(readBin("png/Chemical_Original_48x48.png", "raw", file.info("png/Chemical_Original_48x48.png")[1, "size"]), "txt")
txt<-as.character(txt)
write.table(txt, file = "png/Chemical_Original_48x48.txt", row.names = FALSE, col.names = FALSE, quote = FALSE)
print("base64 written to txt file")

#----read svg #40x40------
bitmap2<-rsvg("svg/Chemical_Original.svg", height = 40, width = 33)
print("40x40 svg loaded")
#convert to png
png::writePNG(bitmap2, paste("png/Chemical_Original_40x40.png", sep=""))
print("40x40 png written")

txt <- base64Encode(readBin("png/Chemical_Original_40x40.png", "raw", file.info("png/Chemical_Original_40x40.png")[1, "size"]), "txt")
txt<-as.character(txt)
write.table(txt, file = "png/Chemical_Original_40x40.txt", row.names = FALSE, col.names = FALSE, quote = FALSE)
print("base64 written to txt file")

#----read svg #32x32------
bitmap2<-rsvg("svg/Chemical_Original.svg", height = 32, width = 27)
print("32x32 svg loaded")
#convert to png
png::writePNG(bitmap2, paste("png/Chemical_Original_32x32.png", sep=""))
print("32x32 png written")

txt <- base64Encode(readBin("png/Chemical_Original_32x32.png", "raw", file.info("png/Chemical_Original_32x32.png")[1, "size"]), "txt")
txt<-as.character(txt)
write.table(txt, file = "png/Chemical_Original_32x32.txt", row.names = FALSE, col.names = FALSE, quote = FALSE)
print("base64 written to txt file")

#----read svg #24x24------
bitmap2<-rsvg("svg/Chemical_Original.svg", height = 24, width = 20)
print("24x24 svg loaded")
#convert to png
png::writePNG(bitmap2, paste("png/Chemical_Original_24x24.png", sep=""))
print("24x24 png written")

txt <- base64Encode(readBin("png/Chemical_Original_24x24.png", "raw", file.info("png/Chemical_Original_24x24.png")[1, "size"]), "txt")
txt<-as.character(txt)
write.table(txt, file = "png/Chemical_Original_24x24.txt", row.names = FALSE, col.names = FALSE, quote = FALSE)
print("base64 written to txt file")

#----read svg #16x16------
bitmap2<-rsvg("svg/Chemical_Original.svg", height = 16, width = 13)
print("16x16 svg loaded")
#convert to png
png::writePNG(bitmap2, paste("png/Chemical_Original_16x16.png", sep=""))
print("16x16 png written")

txt <- base64Encode(readBin("png/Chemical_Original_16x16.png", "raw", file.info("png/Chemical_Original_16x16.png")[1, "size"]), "txt")
txt<-as.character(txt)
write.table(txt, file = "png/Chemical_Original_16x16.txt", row.names = FALSE, col.names = FALSE, quote = FALSE)
print("base64 written to txt file")




print ("==============Batch Successful==================")




