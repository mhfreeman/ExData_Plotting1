# This script will read in data from file in working directory and produce single graph to PNG file
# Specs: bar chart, red bars, title = Global Active Power, plot global active power by frequency

dat <- read.table(file.choose(), sep = ";", na.strings = "?", header = TRUE)
dat <- dat[dat$Date == "1/2/2007" | dat$Date == "2/2/2007",]
