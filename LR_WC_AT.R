library("lattice")
attach(WC_AT)
dotplot(AT)
dotplot(Waist)
boxplot(AT)

#Model Building

reg<-lm(AT~Waist,data = WC_AT)
summary(reg)

pred<-predict(reg,newdata = data.frame(Waist=c(76.85,82)))
pred
