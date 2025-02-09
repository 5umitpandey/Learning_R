#1
#(i) 
vector_a <- seq(1.3, 4.9, by = 0.3)
print(vector_a)

#(ii)
vector_b <- rep(1:4, times = 5)
print(vector_b)

#(iii)
vector_c <- seq(14, 0, by = -2)
print(vector_c)

#(iv)
vector_d <- rep(c(5, 12, 13, 20), each = 2)
print(vector_d)




#2
# Load the dataset
data(iris)

# View the first few rows of the dataset
head(iris)

# Summary statistics of the dataset
summary(iris)

# Structure of the dataset
str(iris)

# Column names of the dataset
names(iris)


# (A)
class(iris)

# (B)
dim(iris) #
    
# (C)
str(iris) #For Factor
levels(iris$Species)


# (b) The three levels are: setosa, versicolor, and virginica.




#3
data(mtcars)
head(mtcars)
summary(mtcars)
names(mtcars)


# (A)
# Select cars with cyl value NO smaller than 5
cars_with_cyl_ge_5 <- mtcars[mtcars$cyl >= 5, ]
print(cars_with_cyl_ge_5)


# (B)
# Show all fields of the first 10 cars
first_10_cars <- head(mtcars, 10)
print(first_10_cars)


# (C)
# Find rows matching "Honda" in the row names
honda_cars <- mtcars[grep("Honda", rownames(mtcars)), ]

# Display the result
print(honda_cars)