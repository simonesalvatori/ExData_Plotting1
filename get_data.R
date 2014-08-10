
get_data <- function() {
        
        # downloading file
        zipfile <- "exdata_data_household_power_consumption.zip"
        filename <- "household_power_consumption.txt"
        cachefile <- "cachexData.csv"

        fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        setwd("E:/_Progetto 14  Coursera/Data Science/Exploratory Data Analysis/Projects/Assignment 1/EDA_assignment1/ExData_Plotting1") #to be removed


        if (file.exists(cachefile)) {
                exData <- read.csv(cachefile)
                return(exData)
                
        }else if (!file.exists(zipfile)){
                download.file(fileUrl, zipfile, 'auto')
        }
        unzip(zipfile, filename)
        # We read the dataset
        tot.exData <- read.table(filename, header=T, sep=';', na.strings="?", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
        # select the requested dates
        exData <- tot.exData[(tot.exData$Date == "1/2/2007") | (tot.exData$Date == "2/2/2007"),]
        # convert dates and time
        #exData$Date <- as.Date(exData$Date)
        exData$DateTime <- strptime( paste(exData$Date,exData$Time), "%d/%m/%Y %H:%M:%S")
        exData <- exData[,3:ncol(exData)]
        #exData$DateTime <- strptime( paste(exData$Date,exData$Time), "%Y-%m-%d %H:%M:%S")
        write.csv(exData, cachefile)
        return(exData)

}