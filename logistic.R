

csv <- read.csv("C:\\Users\\JOHN MARTIN TECH\\Desktop\\RPro\\health.csv", head = T)
str(csv)

#partition data
set.seed(1234)

john <- sample(2, nrow(csv), replace = T, prob = c(0.8, 0.2))
train <-csv[john==1,] 
test <-  csv[john==2,]

#logistic regression model
mymodel <- glm(PDU.Name~submitted.patients + 
                 patients.eligible.for.HbA1c.analysis. + 
                 Patients.used.for.HbA1c.out.come.analysis..., 
               data = train, family = "binomial")
summary(mymodel)







#pred2 <- ifelse(pred>0.5, 1,0)
#table1 <- table(Predicted = pred2, Actual = train$Patients.excluded.from.HbA1c.outcome.analysis)
#1-sum(diag(table1))/sum(table1)




     
       