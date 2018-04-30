library(psych)

# Load the measurements from the Formaldehyde data set
data("Formaldehyde")

#Calculate the Intraclass Correlations
result <- ICC(Formaldehyde[,c(1,2)])

names(result)

# The estimates produced are those of:
# Shrout, Patrick E. and Fleiss, Joseph L. 
# Intraclass correlations: uses in assessing rater reliability. Psychological Bulletin, 1979, 86, 420-3428.
