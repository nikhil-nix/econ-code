

library(uroot)

library(readxl)
library(ineq)
library(reshape2)
library(ggplot2)
library(tseries)
library(aTSA)
library(TSA)
library(car)
library(tidyverse)


decile_data <- read_excel("Downloads/gcipraw1.xlsx", skip = 2)  
decile_data
for (i in seq(1, 10)){
  print(i^2)
}

decile_data$gini <- 0
# Give us the number of rows in decile_data
noc <- nrow(decile_data)

for (i in seq(1, noc)){
  # Go to Row I to get the decile data
  decs_i <- unlist(decile_data[i, 3:12])
  decile_data$gini[i] <- Gini(decs_i)
}

summary(decile_data$gini)
decile_data <- data.frame(decile_data)
decile_data <- decile_data[,c("Year","Trade", "gini", "GDP", "FDI")]

#decile_data$Trade <- log(decile_data$Trade)
#decile_data$gini <- log(decile_data$gini)
#decile_data$FDI <- log(decile_data$FDI)
#decile_data$GDP <- log(decile_data$GDP)
adf.test(decile_data$Trade)
adf.test(decile_data$gini)
adf.test(decile_data$FDI)
adf.test(decile_data$GDP)

mod <- lm(gini ~ Trade+FDI+GDP, data = decile_data)

summary(mod)
#avPlots(mod)




# plot a regression line
#abline(lm(gini~Trade,data=decile_data))


# Draw first plot using axis y1
par(mar = c(7, 3, 5, 4) + 0.3)
plot(decile_data$Year, decile_data$gini, pch = 13, col = 2)

# set parameter new=True for a new axis
par(new = TRUE)

# Draw second plot using axis y2
plot(decile_data$Year, decile_data$Trade, pch = 15, col = 3, axes = FALSE, xlab = "", ylab = "")

axis(side = 4, at = pretty(range(decile_data$Trade)))
mtext("decile_data$Trade", side = 4, line = 3)

  (decile_data$gini)

write.csv(decile_data, "Downloads/data.xlsx")






par(mar = c(5, 4, 4, 4) + 0.3)  # Leave space for z axis
plot(decile_data$Year, decile_data$Trade, ) # first plot
par(new = TRUE)
plot(decile_data$Year, decile_data$gini, type = "l", axes = FALSE, bty = "n", xlab = "", ylab = "")
axis(side=4, at = pretty(range(z)))
mtext("z", side=4, line=3)


data_long <- melt(decile_data, id = "Year")    # Convert data to long format
head(data_long)                      # Head of long data

ggp2 <- ggplot(data_long,            # Create ggplot2 plot
               aes(x = Year,
                   y = value,
                   color = variable)) +
  geom_line()
ggp2                                 # Draw ggplot2 plot



ggp1 <- ggplot(decile_data, aes(Year)) +       # Create ggplot2 plot
  geom_line(aes(y = Trade, color = "red")) +
  geom_line(aes(y = gini, color = "blue"))
ggp1                                 # Draw ggplot2 plot



mtcars.long <- melt(decile_data, id = "Year", measure = c("gini", "Trade"))
ggplot(mtcars.long, aes(Year, value, colour = variable)) + geom_line()


ggplot(decile_data, aes(x=Year)) + 
  geom_line(aes(y=gini, color="gini")) + 
  geom_line(aes(y=Trade, color="Trade"))



ggplot(decile_data, 
       aes(x = Year, y = gini, color = Country)) +
  geom_line(size = 1) +
  theme_bw() +
  ylab("Gini") +
  # Add a title
  ggtitle("Gini coefficients for anglophone countries")


ggplot(decile_data, aes(x=Year)) + 
  geom_line(aes(y=gini, color="gini")) + 
  geom_line(aes(y=Trade, color="Trade"))



ggplot(data, aes(x=day)) +
  
  geom_line( aes(y=temperature)) + 
  geom_line( aes(y=price / coeff)) + # Divide by 10 to get the same range than the temperature
  
  scale_y_continuous(
    
    # Features of the first axis
    name = "First Axis",
    
    # Add a second axis and specify its features
    sec.axis = sec_axis(~.*coeff, name="Second Axis")
  )


