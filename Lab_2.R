#1
A <- c(23, 34, 56, 3, 0, 0)
B <- c("c", "b", "a")
print(list(A,B))

#2
n <- 20
m <- 15
seq_1_to_n <- 1:n
seq_m_to_n <- m:n
seq_by_0.6 <- seq(1, n, by = 0.6)

print(seq_1_to_n)
print(seq_m_to_n)
print(seq_by_0.6)


#3
intervals <- seq(1, 50, length.out = 11)
print(intervals)



#4
pattern <- rep(c(3, 4, 5), times = 5)
print(pattern)



#5
#random number(decimals) from 1 to 10
random_num <- runif(2, min=1, max=10)
print(random_num)

#random number(integers) from 1 to 10
random_int <- sample(1:10, 2, replace = FALSE)
print(random_int)


#6
C <- c(10, 20, 30)
C_and_A <- A + C
print(C_and_A)



#7
D <- c(6, 7)
D_and_A <- D + A
print(D_and_A)



#8
SqRoot_Of_C <- sqrt(C)
print(SqRoot_Of_C)



#9
print( length(A) )
print( length(B) )
print( length(C) )