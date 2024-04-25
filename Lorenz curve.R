library(readxl)
library(tidyverse)
library(ineq)
library(reshape2)

decile_data <- read_excel("Downloads/GCIPrawdata.xlsx", skip = 2)  
head(decile_data)  

str(decile_data)  



#  Select the data for the chosen country and years
sel_Year <- c(1980, 2014)
sel_Country <- c("United States", "China", "India")

temp <- subset(
  decile_data, 
  (decile_data$Country %in% sel_Country) & 
    (decile_data$Year %in% sel_Year))
temp

print("Total incomes are:")  
total_income <- temp[, "Mean Income"] * 
  temp[, "Population"]  
total_income  

test <- c(2, 4, 10, 22)  
cumsum(test)  




# Pick the deciles (Columns 3 to 12) in Row 1 (China, 1980)
decs_c80 <- unlist(temp[1, 3:12])

# The unlist function transforms temp[1, 3:12] from a 
# tibble to simple vector with data which simplifies the 
# calculations.

# Give the total income, assuming a population of 10
total_inc <- 10 * unlist(temp[1, "Mean Income"])

cum_inc_share_c80 = cumsum(decs_c80) / total_inc
cum_inc_share_c80



# For China, 2014  
# Go to Row 2 (China, 2014)
decs_c14 <- unlist(temp[2, 3:12])

# Give the total income, assuming a population of 10
total_inc <- 10 * unlist(temp[2, "Mean Income"]) 

cum_inc_share_c14 = cumsum(decs_c14) / total_inc  

# For the US, 1980  
# Select Row 3 (USA, 1980)
decs_us80 <- unlist(temp[3, 3:12])

# Give the total income, assuming a population of 10
total_inc <- 10 * unlist(temp[3, "Mean Income"])

cum_inc_share_us80 = cumsum(decs_us80) / total_inc  

# For the US, 2014  
# Select Row 4 (USA, 2014)
decs_us14 <- unlist(temp[4, 3:12])   

# Give the total income, assuming a population of 10 
total_inc <- 10 * unlist(temp[4, "Mean Income"])

cum_inc_share_us14 = cumsum(decs_us14) / total_inc  




plot(cum_inc_share_c80, type = "l", col = "blue", 
     lwd = 2, ylab = "Cumulative income share")  

# Add the perfect equality line 
abline(a = 0, b = 0.1, col = "black", lwd = 2)

title("Lorenz curve, China, 1980") 





plot(cum_inc_share_c80, type = "l", col = "blue", 
     lty = 2, lwd = 2, xlab = "Deciles", 
     ylab = "Cumulative income share")  

# Add the perfect equality line 
abline(a = 0, b = 0.1, col = "black", lwd = 2)  

# lty = 1 = dashed line  
lines(cum_inc_share_c14, col = "green", lty = 1, lwd = 2)

# lty = 2 = solid line  
lines(cum_inc_share_us80, col = "red", lty = 2, lwd = 2)

lines(cum_inc_share_us14, col = "orange", 
      lty = 1, lwd = 2)  

title("Lorenz curves, China and the US (1980 and 2014)")  

legend("topleft", lty = 2:1, lwd = 2, cex = 1.2, legend = 
         c("China, 1980", "China, 2014",
           "US, 1980", "US, 2014"),  
       col = c("blue", "green", "red", "orange"))  



