#Loading Data Sets
Bajaj_Fin <- read_csv("Bajaj Fin.csv")
IBDI <- read_csv("IBDI.csv")
IDEA <- read_csv("IDEA.csv")
Infosys <- read_csv("Infosys.csv")
Mahindra <- read_csv("Mahindra.csv")
Reliance <- read_csv("Reliance.csv")
Suzlon <- read_csv("Suzlon.csv")
Tata_Steel <- read_csv("Tata Steel.csv")
YES_Bank <- read_csv("YES Bank.csv")

#Calculating Annualized Returns and Std Dev for Bajaj_Fin

Bajaj_Fin$Month=as.Date(Bajaj_Fin$Month, "%m/%d/%y")
Bajaj_Fin=calculate_log_returns(Bajaj_Fin,"Close Price")
Bajaj_Fin$year=as.numeric(format(as.Date(Bajaj_Fin$Month,"%Y-%m-%d"), "%Y" ))
Bajaj_Fin_monthlyavg=aggregate(Log_Returns~year, data=Bajaj_Fin,mean)
Bajaj_Fin_monthlystddev=aggregate(Log_Returns~year, data=Bajaj_Fin,sd)
Bajaj_Fin_monthlystddev$Stddev=Bajaj_Fin_monthlystddev$Log_Returns
Bajaj_Fin_monthlystddev=select(Bajaj_Fin_monthlystddev,-Log_Returns)
df1=cbind(Bajaj_Fin_monthlyavg, Bajaj_Fin_monthlystddev$Stddev)
colnames(df1)[colnames(df1) == "Bajaj_Fin_monthlystddev$Stddev"] <- "Stddev"
stddev1=as.numeric(Bajaj_Final$Stddev)
returns1=as.numeric(Bajaj_Final$Log_Returns)


#Calculating Annualized Returns and Std Dev for Bajaj

IBDI$Month=as.Date(IBDI$Month, "%m/%d/%y")
IBDI=calculate_log_returns(IBDI,"Close Price")
IBDI$year=as.numeric(format(as.Date(IBDI$Month,"%Y-%m-%d"), "%Y" ))
IBDI_monthlyavg=aggregate(Log_Returns~year, data=IBDI,mean)
IDBI_monthlystddev=aggregate(Log_Returns~year, data=IBDI,sd)
IDBI_monthlystddev$Stddev=IDBI_monthlystddev$Log_Returns
IDBI_monthlystddev=select(IDBI_monthlystddev,-Log_Returns)
df2=cbind(IBDI_monthlyavg, IDBI_monthlystddev$Stddev)
colnames(df2)[colnames(df2) == "IDBI_monthlystddev$Stddev"] <- "Stddev"
stddev2=as.numeric(IDBI_Final$Stddev)
returns2=as.numeric(IDBI_Final$Log_Returns)

#Calculating Annualized Returns and Std Dev for IDEA

IDEA$Month=as.Date(IDEA$Month, "%m/%d/%y")
IDEA$year=as.numeric(format(as.Date(IDEA$Month,"%Y-%m-%d"), "%Y" ))
IDEA=calculate_log_returns(Bajaj_Fin,"Close Price")
IDEA_monthlyavg=aggregate(Log_Returns~year, data=IDEA,mean)
IDEA_monthlystddev=aggregate(Log_Returns~year, data=IDEA,sd)
IDEA_monthlystddev$Stddev=IDEA_monthlystddev$Log_Returns
IDEA_monthlystddev=select(IDEA_monthlystddev,-Log_Returns)
df3=cbind(IDEA_monthlyavg, IDEA_monthlystddev$Stddev)
colnames(df3)[colnames(df3) == "IDEA_monthlystddev$Stddev"] <- "Stddev"
stddev3=as.numeric(IDEA_Final$Stddev)
returns3=as.numeric(IDEA_Final$Log_Returns)

#Calculating Annualized Returns and Std Dev for Infosys

Infosys$Month=as.Date(Infosys$Month, "%m/%d/%y")
Infosys$year=as.numeric(format(as.Date(Infosys$Month,"%Y-%m-%d"), "%Y" ))
Infosys=calculate_log_returns(Infosys,"Close Price")
Infosys_monthlyavg=aggregate(Log_Returns~year, data=Infosys,mean)
Infosys_monthlystddev=aggregate(Log_Returns~year, data=Infosys,sd)
Infosys_monthlystddev$Stddev=Infosys_monthlystddev$Log_Returns
Infosys_monthlystddev=select(Infosys_monthlystddev,-Log_Returns)
df4=cbind(Infosys_monthlyavg, Infosys_monthlystddev$Stddev)
colnames(df4)[colnames(df4) == "Infosys_monthlystddev$Stddev"] <- "Stddev"
stddev4=as.numeric(Infosys_Final$Stddev)
returns4=as.numeric(Infosys_Final$Log_Returns)

#Calculating Annualized Returns and Std Dev for Mahindra

Mahindra$Month=as.Date(Mahindra$Month, "%m/%d/%y")
Mahindra$year=as.numeric(format(as.Date(Mahindra$Month,"%Y-%m-%d"), "%Y" ))
Mahindra=calculate_log_returns(Mahindra,"Close Price")
Mahindra_monthlyavg=aggregate(Log_Returns~year, data=Mahindra,mean)
Mahindra_monthlystddev=aggregate(Log_Returns~year, data=Mahindra,sd)
Mahindra_monthlystddev$Stddev=Mahindra_monthlystddev$Log_Returns
Mahindra_monthlystddev=select(Mahindra_monthlystddev,-Log_Returns)
df5=cbind(Mahindra_monthlyavg, Mahindra_monthlystddev$Stddev)
colnames(df5)[colnames(df5) == "Mahindra_monthlystddev$Stddev"] <- "Stddev"
stddev5=as.numeric(Mahindra_Final$Stddev)
returns5=as.numeric(Mahindra_Final$Log_Returns)

#Calculating Annualized Returns and Std Dev for PNB

PNB$Month=as.Date(PNB$Month, "%m/%d/%y")
PNB$year=as.numeric(format(as.Date(PNB$Month,"%Y-%m-%d"), "%Y" ))
PNB=calculate_log_returns(PNB,"Close Price")
PNB_monthlyavg=aggregate(Log_Returns~year, data=PNB,mean)
PNB_monthlystddev=aggregate(Log_Returns~year, data=PNB,sd)
PNB_monthlystddev$Stddev=PNB_monthlystddev$Log_Returns
PNB_monthlystddev=select(PNB_monthlystddev,-Log_Returns)
df6=cbind(PNB_monthlyavg, PNB_monthlystddev$Stddev)
colnames(df6)[colnames(df6) == "PNB_monthlystddev$Stddev"] <- "Stddev"
stddev6=as.numeric(PNB_Final$Stddev)
returns6=as.numeric(PNB_Final$Log_Returns)

#Calculating Annualized Returns and Std Dev for Reliance

Reliance$Month=as.Date(Reliance$Month, "%m/%d/%y")
Reliance$year=as.numeric(format(as.Date(Reliance$Month,"%Y-%m-%d"), "%Y" ))
Reliance=calculate_log_returns(Reliance,"Close Price")
Reliance_monthlyavg=aggregate(Log_Returns~year, data=Reliance,mean)
Reliance_monthlystddev=aggregate(Log_Returns~year, data=Reliance,sd)
Reliance_monthlystddev$Stddev=Reliance_monthlystddev$Log_Returns
Reliance_monthlystddev=select(Reliance_monthlystddev,-Log_Returns)
df7=cbind(Reliance_monthlyavg, Reliance_monthlystddev$Stddev)
colnames(df7)[colnames(df7) == "Reliance_monthlystddev$Stddev"] <- "Stddev"
stddev7=as.numeric(Reliance_Final$Stddev)
returns7=as.numeric(Reliance_Final$Log_Returns)

#Calculating Annualized Returns and Std Dev for Suzlon

Suzlon$Month=as.Date(Suzlon$Month, "%m/%d/%y")
Suzlon$year=as.numeric(format(as.Date(Suzlon$Month,"%Y-%m-%d"), "%Y" ))
Suzlon=calculate_log_returns(Suzlon,"Close Price")
Suzlon_monthlyavg=aggregate(Log_Returns~year, data=Suzlon,mean)
Suzlon_monthlystddev=aggregate(Log_Returns~year, data=Suzlon,sd)
Suzlon_monthlystddev$Stddev=Suzlon_monthlystddev$Log_Returns
Suzlon_monthlystddev=select(Suzlon_monthlystddev,-Log_Returns)
df8=cbind(Suzlon_monthlyavg, Suzlon_monthlystddev$Stddev)
colnames(df8)[colnames(df8) == "Suzlon_monthlystddev$Stddev"] <- "Stddev"
stddev8=as.numeric(Suzlon_Final$Stddev)
returns8=as.numeric(Suzlon_Final$Log_Returns)

#Calculating Annualized Returns and Std Dev for Tata Steel

Tata_Steel$Month=as.Date(Tata_Steel$Month, "%m/%d/%y")
Tata_Steel$year=as.numeric(format(as.Date(Tata_Steel$Month,"%Y-%m-%d"), "%Y" ))
Tata_Steel=calculate_log_returns(Tata_Steel,"Close Price")
Tata_Steel_monthlyavg=aggregate(Log_Returns~year, data=Tata_Steel,mean)
Tata_Steel_monthlystddev=aggregate(Log_Returns~year, data=Tata_Steel,sd)
Tata_Steel_monthlystddev$Stddev=Tata_Steel_monthlystddev$Log_Returns
Tata_Steel_monthlystddev=select(Tata_Steel_monthlystddev,-Log_Returns)
df9=cbind(Tata_Steel_monthlyavg, Tata_Steel_monthlystddev$Stddev)
colnames(df9)[colnames(df9) == "Tata_Steel_monthlystddev$Stddev"] <- "Stddev"
stddev9=as.numeric(Tata_Steel_Final$Stddev)
returns9=as.numeric(Tata_Steel_Final$Log_Returns)

#Calculating Annualized Returns and Std Dev for Yes_Bank

YES_Bank$Month=as.Date(YES_Bank$Month, "%m/%d/%y")
YES_Bank$year=as.numeric(format(as.Date(YES_Bank$Month,"%Y-%m-%d"), "%Y" ))
YES_Bank=calculate_log_returns(YES_Bank,"Close Price")
YES_Bank_monthlyavg=aggregate(Log_Returns~year, data=YES_Bank,mean)
YES_Bank_monthlystddev=aggregate(Log_Returns~year, data=YES_Bank,sd)
YES_Bank_monthlystddev$Stddev=YES_Bank_monthlystddev$Log_Returns
YES_Bank_monthlystddev=select(YES_Bank_monthlystddev,-Log_Returns)
df10=cbind(YES_Bank_monthlyavg, YES_Bank_monthlystddev$Stddev)
colnames(df10)[colnames(df10) == "YES_Bank_monthlystddev$Stddev"] <- "Stddev"
stddev10=as.numeric(YES_Bank_Final$Stddev)
returns10=as.numeric(YES_Bank_Final$Log_Returns)

# Initialize an empty list to store the average returns and standard deviations
returns_list <- list()
stddev_list <- list()

# Loop over the data frames
for (i in 1:10) {
  # Extract the average return and standard deviation for the current stock
  returns <- eval(parse(text = paste0("df", i)))[, "Log_Returns"]
  stddev <- eval(parse(text = paste0("df", i)))[, "Stddev"]
  
  # Append the average return and standard deviation to the lists
  returns_list[[i]] <- returns
  stddev_list[[i]] <- stddev
}

# Bind the lists together into a single matrix
matrix <- cbind(returns_list, stddev_list)

# Calculate the variance-covariance matrix
varcovar <- cov(matrix)
std_dev <- matrix(c(NULL), nrow=10, ncol=15)


std_dev <- matrix(c(stddev1), nrow=10, ncol=17)
row.names(std_dev) <- c("Bajaj Fin", "IDBI", "IDEA", "Infosys", "Mahindra", "PNB", "Reliance", "Suzlon", "Tata Steel", "YES bank")
colnames(std_dev) <- c("2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017","2018", "2019", "2020", "2021","2022", "2023")
std_dev[1,]=stddev1
std_dev[2,]=stddev2
std_dev[3,]=stddev3
std_dev[4,]=stddev4
std_dev[5,]=stddev5
std_dev[6,]=stddev6
std_dev[7,]=stddev7
std_dev[8,]=stddev8
std_dev[9,]=stddev9
std_dev[10,]=stddev10
std_dev=select(std_dev,-"2021")

Return_Matrix <- matrix(c(stddev1), nrow=10, ncol=17)
row.names(Return_Matrix) <- c("Bajaj Fin", "IDBI", "IDEA", "Infosys", "Mahindra", "PNB", "Reliance", "Suzlon", "Tata Steel", "YES bank")
colnames(Return_Matrix) <- c("2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017","2018", "2019", "2020", "2021","2022", "2023")
Return_Matrix[1,]=returns1
Return_Matrix[2,]=returns2
Return_Matrix[3,]=returns3
Return_Matrix[4,]=returns4
Return_Matrix[5,]=returns5
Return_Matrix[6,]=returns6
Return_Matrix[7,]=returns7
Return_Matrix[8,]=returns8
Return_Matrix[9,]=returns9
Return_Matrix[10,]=returns10
Return_Matrix=t(Return_Matrix)

Covariance_Matrix=cov(Return_Matrix)

#Annualizing market returns
Market_ret$Month=as.Date(Market_ret$Month, "%m/%d/%y")
Market_ret=calculate_log_returns(Market_ret,"Close")
Market_ret$year=as.numeric(format(as.Date(Market_ret$Month,"%Y-%m-%d"), "%Y" ))
Market_ret_yearly=aggregate(Log_Returns~year, data=Bajaj_Fin,mean)

#Calculating Beta
ts1=ts(Bajaj_Final$Log_Returns, start=c(2007),end=c(2022),frequency=1)
market_ts=ts(Market_ret_yearly$Log_Returns, start=c(2007),end=c(2022),frequency=1)
riskfree_ts=ts(Risk_free_rates$Rate,start=c(2007),end=c(2022),frequency=1)
beta1=CAPM.beta(ts1, market_ts, riskfree_ts)
beta1

ts2=ts(Mahindra_Final$Log_Returns, start=c(2007),end=c(2022),frequency=1)
beta2=CAPM.beta(ts2, market_ts, riskfree_ts)

ts3=ts(Tata_Steel_Final$Log_Returns, start=c(2007),end=c(2022),frequency=1)
beta3=CAPM.beta(ts3, market_ts, riskfree_ts)

ts4=ts(IDEA_Final$Log_Returns, start=c(2007),end=c(2022),frequency=1)
beta4=CAPM.beta(ts4, market_ts, riskfree_ts)

ts5=ts(PNB_Final$Log_Returns, start=c(2007),end=c(2022),frequency=1)
beta5=CAPM.beta(ts5, market_ts, riskfree_ts)

ts6=ts(IDBI_Final$Log_Returns, start=c(2007),end=c(2022),frequency=1)
beta6=CAPM.beta(ts6, market_ts, riskfree_ts)

ts7=ts(Reliance_Final$Log_Returns, start=c(2007),end=c(2022),frequency=1)
beta3=CAPM.beta(ts7, market_ts, riskfree_ts)

ts8=ts(Infosys_Final$Log_Returns, start=c(2007),end=c(2022),frequency=1)
beta3=CAPM.beta(ts8, market_ts, riskfree_ts)

ts9=ts(Suzlon_Final$Log_Returns, start=c(2007),end=c(2022),frequency=1)
beta9=CAPM.beta(ts9, market_ts, riskfree_ts)

ts10=ts(YesBank_Final$Log_Returns, start=c(2007),end=c(2022),frequency=1)
beta10=CAPM.beta(ts10, market_ts, riskfree_ts)

## scatter plot
data1 <- cbind(data1,avgnew_rf )

risk_premium <- avgnew_sp -avgnew_rf

data1 <- cbind(data1,risk_premium )

data_lm<- as.data.frame(data1)

Bajaj_fin.fit <- lm(Bajaj_Final. ~ avgnew_rf + risk_premium, data = data_lm)
IDBI.fit <- lm(IDBI_Final.. ~ avgnew_rf + risk_premium, data = data_lm)
IDEA.fit <- lm(IDEA_Final ~ avgnew_rf + risk_premium, data = data_lm)
PNB.fit <- lm(PNB_Final ~ avgnew_rf + risk_premium, data = data_lm)
Infosys.fit <- lm(Infosys_Final ~ avgnew_rf + risk_premium, data = data_lm)
Suzlon.fit <- lm(Suzlon_Final~ avgnew_rf + risk_premium, data = data_lm)
Mahindra.fit <- lm(Mahindra_Final ~ avgnew_rf + risk_premium, data = data_lm)
Tata_Steel.fit <- lm(Tata_Steel_Final) ~ avgnew_rf + risk_premium, data = data_lm)
YESBank.fit <- lm(YES_Bank_Final ~ avgnew_rf + risk_premium, data = data_lm)
Reliance.fit <- lm(Reliance_Final ~ avgnew_rf + risk_premium, data = data_lm)


final <- cbind(df,beta )

summary(avgnew_rf)
final$expected <- final$expected.return-0.064

plot(x=final$beta, y=final$expected, , main="E(r_i)-r_f vs beta_i ", xlab="beta_i", ylab="E(r_i)-r_f")

##Regression model and its summary
Model.fit <- lm(expected ~ beta, data = final)
summary(Model.fit)