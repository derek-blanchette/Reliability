library(psych)

#Load the measurements from the Formaldehyde data set
data("Formaldehyde")

#Calculate the Intraclass Correlations
ICC(Formaldehyde[,c(1,2)])
