# Agreement Plots in Reliability

When working with quantitative values, an agreement plot is a scatter plot of rating 1 vs rating 2. It is an effective way to visualize intrarater and interrater agreement. They also make good companions to the numeric measures of reliability. Here are some helpful considerations:

* Ensure that both the X and the Y axis are on the same scale. This will ensure that the plot is square.
* Add the line of perfect agreement Y = X (abline in R). This will help call out instances of large deviation from agreement. 
* If there are multiple groups of raters, you can color code. This can often capture varying skill/experience levels.
* If the sample size is reasonable and overplotting will not be an issue, you can label each point with a sample ID. This makes quick work of detecting outliers. 
* I've found that filled circles work really well for plotting symbols.


## [R] Agreement Plot Example

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
     

