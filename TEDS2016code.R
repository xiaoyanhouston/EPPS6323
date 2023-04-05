library(haven) 
TEDS_2016 <- read_stata("https://github.com/datageneration/home/blob/master/DataProgramming/data/TEDS_2016.dta?raw=true")

summary(TEDS_2016)

#5 Create the cross table
Tondu_female<- xtabs(~ Tondu + female, data= TEDS_2016)
Tondu_DPP<- xtabs(~ Tondu + DPP, data = TEDS_2016)
Tondu_DPP
Tondu_age<- xtabs(~ Tondu + age, data = TEDS_2016)
Tondu_income<- xtabs(~ Tondu + income, data = TEDS_2016)
Tondu_edu<- xtabs(~ Tondu + edu, data = TEDS_2016)
Tondu_Taiwanese<-xtabs(~ Tondu + Taiwanese, data = TEDS_2016)
Tondu_Econ_worse<- xtabs(~ Tondu + Econ_worse, data = TEDS_2016)
Tondu_age
Tondu_income
Tondu_edu
Tondu_Taiwanese
Tondu_Econ_worse
Tondu_votetsai<- xtabs(~ Tondu + votetsai, data = TEDS_2016)
boxplot(age ~ Tondu, data=TEDS_2016, Xlab="Tondu", ylab="age", main = "Boxplot")

TEDS_2016$Tondu<-as.numeric(TEDS_2016$Tondu,labels=c("Unification now", 
                                                     "Status quo, unif. in future",
                                                     "Status quo, decide later",
                                                     "Status quo forever", 
                                                     "Status quo, indep. in future", 
                                                     "Independence now", "No response"))

table_tondu<-table(TEDS_2016$Tondu)

barplot(table_tondu,
main = "Barchart of Tondu", 
#xlab="Tondu",
ylab="Frequency",
names.arg = c("Unification now", 
              "Status quo, unif. in future",
              "Status quo, decide later",
              "Status quo forever", 
              "Status quo, indep. in future", 
              "Independence now", "No response"),las=2)
               
               
               
               