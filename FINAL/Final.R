#Devoir final de Johane DARIUS 
#Graphiques realises a partir de donnees de la Bnaque mondiale
#sur la liquidite bancaire en Haiti (en % du PIB) de 2000 a 2020


#Chargement des librairies
library(readxl)
library(ggplot.multistats)
library(ggplot)
library(ggplot2)

#Importation et lecture du fichier excel
Joh1 <- read_excel("Joh1.xlsx")
View(Joh1)
as.numeric(Joh1$Annees)
Joh1
Joh1<-na.omit(Joh1)



#Graphique en nuage de point
Plot1<-ggplot(data=Joh1,aes(x=Annees,y=Liquidites), type="l", lwd=2,
              sub="source: Banque mondiale") + geom_point(col="red")
Plot1

#Graphique en baton
Plot2<-ggplot(data=Joh1,aes(x=Annees, y=Liquidites)) 
Plot2 + geom_bar(stat="identity",fill="yellow", size=0.5)


#Graphique en ligne
Plot3<-ggplot(data=Joh1,aes(x=Annees,y=Liquidites)) 
Plot3+ geom_line(aes(col="type", group=1), size=2)

















