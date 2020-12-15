# Get Data

url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

if (!file.exists("./data")) {
  dir.create("./data")
  download.file(url, destfile = './data/raw_data.zip')
  unzip(zipfile = './data/raw_data.zip', exdir = './data')
}

data <- read.csv("./data/household_power_consumption.txt", header=T, sep=';')
data$Date <- as.Date(data$Date, format="%d/%m/%Y")


data <- subset(data, (data$Date >= "2007-02-01" & data$Date <= "2007-02-02"))


datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)


data$Global_active_power <- as.numeric(data$Global_active_power)

Sys.setlocale(category = "LC_ALL", locale = "english")