


install.packages("weathercan")
install.packages("devtools") # If not already installed
devtools::install_github("ropensci/weathercan")
??weathercan
stations_new<-stations_dl()
library(weathercan)
head(stations)
summary(stations)
print(stations$station_name)

#specific locations
Squam<-stations_search("Squamish",interval="day")
Van<-stations_search("Vancouver",interval="day")
Pemb<-stations_search("Pemberton",interval="day")
Lil<-stations_search("Lillooet",interval="day")

squam.day<-weather_dl(station_ids=336,start="2019-01-01",end="2019-12-31",interval="day")

van.day<-weather_dl(station_ids = 6833,start="2019-01-01",end="2019-12-31",interval="day")

lil.day<-weather_dl(station_ids=27388,start="2019-01-01",end="2019-12-31",interval="day")

pemb.day<-weather_dl(station_ids = 536,start="2019-01-01",end="2019-12-31",interval="day")

plot(squam.day$max_temp,squam.day$total_precip)
plot(pemb.day$max_temp,pemb.day$total_precip)
plot(lil.day$max_temp,lil.day$total_precip)
plot(van.day$max_temp,van.day$total_precip)


#Saving as pdf to files
pdf(file=paste(path.maybefigs,"Squamish.day.maxtemp.totprecip.pdf",sep="/"),
    width=4,height=4)
plot(squam.day$max_temp,squam.day$total_precip)
dev.off()


pdf(file=paste(path.maybefigs,"Pemb.day.maxtemp.totprecip.pdf",sep="/"),
    width=4,height=4)
plot(pemb.day$max_temp,pemb.day$total_precip)
dev.off()

pdf(file=paste(path.maybefigs,"Lil.day.maxtemp.totprecip.pdf",sep="/"),
    width=4,height=4)
plot(lil.day$max_temp,lil.day$total_precip)
dev.off()

pdf(file=paste(path.maybefigs,"Van.day.maxtemp.totprecip.pdf",sep="/"),
    width=4,height=4)
plot(van.day$max_temp,van.day$total_precip)
dev.off()


#wrong graphs made, dont sweat it just make more graphs

#I think in order for me to see anything you have to hist ctrl+s
#and that saves the document which lets me see it
