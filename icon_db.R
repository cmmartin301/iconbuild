library(RSQLite)
library(sqldf)
#library(here)
#setwd("Chemicals")
db<-dbConnect(SQLite(), dbname = "C:/Projects/Github/iconbuild/db/Icons_test2.sqlite")

dbListTables(db)
IconID<-nrow(dbReadTable(db, "icons")) + 1
#dbListFields(db, "test")

dbDisconnect(db)
rm(db)


#svg.name<-list.files(path = "svg/", full.names = FALSE, recursive = TRUE, pattern = "svg")
svg.txt<-list.files(path = "svg/", full.names = TRUE, recursive = TRUE, pattern = "txt")
svg.encode<-read.table(svg.txt)
svg.encode<-as.character(svg.encode[1,1])

#----IconName------
IconName<-tail(strsplit(getwd(), "/")[[1]], 1)
#IconName<-gsub("./", "", IconName)

#------Description-----
Description<-""

#-----Keywords-----
Keywords<-""

#----SVG_name-----
SVG_Name<-list.files(path = "svg/", full.names = FALSE, recursive = TRUE, pattern = "svg")

#----SVG_base64--
svg.txt<-list.files(path = "svg/", full.names = TRUE, recursive = TRUE, pattern = "txt")
SVG_base64<-read.table(svg.txt)
SVG_base64<-as.character(SVG_base64[1,1])

#---PNG_16x16_name----
PNG_16x16_name<-list.files(path = "png/", full.names = FALSE, recursive = TRUE, pattern = "16x16.png")


#---PNG_16x16_base64----
png.txt<-list.files(path = "png/", full.names = TRUE, recursive = TRUE, pattern = "16x16.txt")
PNG_16x16_base64<-read.table(png.txt)
PNG_16x16_base64<-as.character(PNG_16x16_base64[1,1])

#---PNG_24x24_name----
PNG_24x24_name<-list.files(path = "png/", full.names = FALSE, recursive = TRUE, pattern = "24x24.png")


#---PNG_24x24_base64----
png.txt<-list.files(path = "png/", full.names = TRUE, recursive = TRUE, pattern = "24x24.txt")
PNG_24x24_base64<-read.table(png.txt)
PNG_24x24_base64<-as.character(PNG_24x24_base64[1,1])

#---PNG_32x32_name----
PNG_32x32_name<-list.files(path = "png/", full.names = FALSE, recursive = TRUE, pattern = "32x32.png")


#---PNG_32x32_base64----
png.txt<-list.files(path = "png/", full.names = TRUE, recursive = TRUE, pattern = "32x32.txt")
PNG_32x32_base64<-read.table(png.txt)
PNG_32x32_base64<-as.character(PNG_32x32_base64[1,1])

#---PNG_40x40_name----
PNG_40x40_name<-list.files(path = "png/", full.names = FALSE, recursive = TRUE, pattern = "40x40.png")


#---PNG_40x40_base64----
png.txt<-list.files(path = "png/", full.names = TRUE, recursive = TRUE, pattern = "40x40.txt")
PNG_40x40_base64<-read.table(png.txt)
PNG_40x40_base64<-as.character(PNG_40x40_base64[1,1])

#---PNG_48x48_name----
PNG_48x48_name<-list.files(path = "png/", full.names = FALSE, recursive = TRUE, pattern = "48x48.png")


#---PNG_48x48_base64----
png.txt<-list.files(path = "png/", full.names = TRUE, recursive = TRUE, pattern = "48x48.txt")
PNG_48x48_base64<-read.table(png.txt)
PNG_48x48_base64<-as.character(PNG_48x48_base64[1,1])

#---PNG_64x64_name----
PNG_64x64_name<-list.files(path = "png/", full.names = FALSE, recursive = TRUE, pattern = "64x64.png")


#---PNG_64x64_base64----
png.txt<-list.files(path = "png/", full.names = TRUE, recursive = TRUE, pattern = "64x64.txt")
PNG_64x64_base64<-read.table(png.txt)
PNG_64x64_base64<-as.character(PNG_64x64_base64[1,1])

#---PNG_128x128_name----
PNG_128x128_name<-list.files(path = "png/", full.names = FALSE, recursive = TRUE, pattern = "128x128.png")


#---PNG_128x128_base64----
png.txt<-list.files(path = "png/", full.names = TRUE, recursive = TRUE, pattern = "128x128.txt")
PNG_128x128_base64<-read.table(png.txt)
PNG_128x128_base64<-as.character(PNG_128x128_base64[1,1])


#---PNG_256x256_name----
PNG_256x256_name<-list.files(path = "png/", full.names = FALSE, recursive = TRUE, pattern = "256x256.png")


#---PNG_256x256_base64----
png.txt<-list.files(path = "png/", full.names = TRUE, recursive = TRUE, pattern = "256x256.txt")
PNG_256x256_base64<-read.table(png.txt)
PNG_256x256_base64<-as.character(PNG_256x256_base64[1,1])


#----Group---
Group<-tail(strsplit(getwd(), "/")[[1]], 2)[1]

#----LastUpdated---------
LastUpdated<-as.character(Sys.Date())

#----Author----
Author<-"Cameron Martin"

#---Build String----
IconID.query<-paste("'", IconID, "'", sep="")
IconName.query<-paste("'", IconName, "'", sep="")
Description.query<-paste("'", Description, "'", sep="")
Keywords.query<-paste("'", Keywords, "'", sep="")
SVG_Name.query<-paste("'", SVG_Name, "'", sep="")
SVG_base64.query<-paste("'", SVG_base64, "'", sep="")
PNG_16x16_name.query<-paste("'", PNG_16x16_name, "'", sep="")
PNG_16x16_base64.query<-paste("'", PNG_16x16_base64, "'", sep="")
PNG_24x24_name.query<-paste("'", PNG_24x24_name, "'", sep="")
PNG_24x24_base64.query<-paste("'", PNG_24x24_base64, "'", sep="")
PNG_32x32_name.query<-paste("'", PNG_32x32_name, "'", sep="")
PNG_32x32_base64.query<-paste("'", PNG_32x32_base64, "'", sep="")
PNG_40x40_name.query<-paste("'", PNG_40x40_name, "'", sep="")
PNG_40x40_base64.query<-paste("'", PNG_40x40_base64, "'", sep="")
PNG_48x48_name.query<-paste("'", PNG_48x48_name, "'", sep="")
PNG_48x48_base64.query<-paste("'", PNG_48x48_base64, "'", sep="")
PNG_64x64_name.query<-paste("'", PNG_64x64_name, "'", sep="")
PNG_64x64_base64.query<-paste("'", PNG_64x64_base64, "'", sep="")
PNG_128x128_name.query<-paste("'", PNG_128x128_name, "'", sep="")
PNG_128x128_base64.query<-paste("'", PNG_128x128_base64, "'", sep="")
PNG_256x256_name.query<-paste("'", PNG_256x256_name, "'", sep="")
PNG_256x256_base64.query<-paste("'", PNG_256x256_base64, "'", sep="")
Group.query<-paste("'", Group, "'", sep="")
LastUpdated.query<-paste("'", LastUpdated, "'", sep="")
Author.query<-paste("'", Author, "'", sep="")

string<-paste(IconID.query, IconName.query, Description.query, Keywords.query, SVG_Name.query, SVG_base64.query, 
              PNG_16x16_name.query, PNG_16x16_base64.query, PNG_24x24_name.query, PNG_24x24_base64.query,
              PNG_32x32_name.query, PNG_32x32_base64.query, PNG_40x40_name.query, PNG_40x40_base64.query, 
              PNG_48x48_name.query, PNG_48x48_base64.query, PNG_64x64_name.query, PNG_64x64_base64.query, 
              PNG_128x128_name.query, PNG_128x128_base64.query, PNG_256x256_name.query, PNG_256x256_base64.query, 
              Group.query, LastUpdated.query, Author.query,  sep=", ")


db<-dbConnect(SQLite(), dbname = "C:/Projects/Github/iconbuild/db/icons_test2.sqlite")
dbSendQuery(db, paste("INSERT INTO icons VALUES (", string, ")", sep = ""), append=TRUE, row.names=FALSE, overwrite = FALSE)

dbDisconnect(db)
rm(db)
