# Agreement Plot Example - See Markdown file for Tips
# Derek R. Blanchette

#Load the measurements from the Formaldehyde data set
data("Formaldehyde")

#Data wrangling
rating1 <- Formaldehyde[,1]
rating2 <- Formaldehyde[,2] 
ID <- seq(1:6)
ratings <- as.data.frame(cbind(ID, rating1, rating2))

#Create plot
plot(ratings$rating1,
     ratings$rating2,
     main = "Agreement of Ratings",
     xlim = c(min(ratings$rating1, ratings$rating2), max(ratings$rating1, ratings$rating2)),
     ylim = c(min(ratings$rating1, ratings$rating2), max(ratings$rating1, ratings$rating2)),
     xlab = "Rating 1",
     ylab = "Rating 2",
     pch = 19,
     col = "blue")

#Label samples
text(ratings$rating1, ratings$rating2, labels = ratings$ID, pos = 2, cex = 0.7)

#Add line of perfect agreement
abline(0,1)
