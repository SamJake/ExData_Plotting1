#source("load.R")
setwd("C:/Sammy/ExData_Plotting1")
png(file="plot4.png",height = 480, width = 480, units = "px")
par(mfrow=c(2,2),mar=c(4,4,2,1))
with(df2,plot(datetime,Global_active_power,col="black",type="l"))
with(df2,plot(datetime,Voltage,col="black",type="l"))
#with(df2,plot(datetime,Sub_metering_1,col="black",type="l"))

with(df2,plot(datetime,Sub_metering_1,type = "n",ylab = "Energy sub metering"))
with(df2,lines(datetime,Sub_metering_1,col="black"))
with(df2,lines(datetime,Sub_metering_2,col="red"))
with(df2,lines(datetime,Sub_metering_3,col="blue"))
legend("topright",lwd=1,lty=c(1,1,1),col=c("black","red","blue"),legend=c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"))

with(df2,plot(datetime,Global_reactive_power,col="black",type="l"))
dev.off()