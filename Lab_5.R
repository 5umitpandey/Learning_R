library(dplyr)

#1. Find the mean and standard deviation of the sepal width and sepal length for each type of species.
data(iris)

summary_stats <- iris %>%
  group_by(Species) %>%
  summarise(
    Sepal.Length.Mean = mean(Sepal.Length),
    Sepal.Length.SD = sd(Sepal.Length),
    Sepal.Width.Mean = mean(Sepal.Width),
    Sepal.Width.SD = sd(Sepal.Width)
  )

print(summary_stats)



#2. Create a new dataset called iris.class from the iris dataset. Use a loop and if else statement to create a
# vector in the iris.class dataset called Calyx.Width, which is “short” if Sepal.Length is less than 5, and
# otherwise is “long.” (The sepals of a flower are collectively known as the calyx.)

# Create a copy of the iris dataset to work with
iris.class <- iris

# Initialize the Calyx.Width vector
Calyx.Width <- character(nrow(iris.class))

# Loop through each row of the dataset
for (i in 1:nrow(iris.class)) {
  Calyx.Width[i] <- ifelse(iris.class$Sepal.Length[i] < 5, "short", "long")
}

# Add the Calyx.Width vector to the iris.class dataset
iris.class$Calyx.Width <- Calyx.Width

head(iris.class)




#3. Create a histogram of the Petal.Length variable.
hist(iris$Petal.Length,
     main = "Histogram of Petal Length",
     xlab = "Petal Length",
     col = "lightblue",
     border = "black")




#4. Create side-by-side boxplots of the Petal.Width for each type of Species.  Export your figure created in a .png file.
library(ggplot2)

# Create the boxplots
p <- ggplot(iris, aes(x = Species, y = Petal.Width, fill = Species)) +
  geom_boxplot() +
  labs(title = "Boxplots of Petal Width by Species",
       x = "Species",
       y = "Petal Width") +
  theme_minimal()

ggsave("Petal_Width_Boxplots.png", plot = p, width = 8, height = 6)

print(p)