#1
A <- c(12, 13, 14, 15, 16)
cat("A = ", A, "\n")


#2
cat("Sum of A = ", sum(A), "\n")


#3
cat("Product of A = ", prod(A), "\n")


#4
cat("Max in A = ", max(A), "& Min in A = ", min(A), "\n")



#5
cat("Range of A = ", range(A), "\n")



#6
cat("Mean in A = ", mean(A), "Variance in A = ", var(A), 
      "Standard Deviation = ", sd(A), "Median = ", median((A)), "\n" )


#7
B <- sort(A)
cat("B (Increasing Order) = ", B, "\n")

C <- sort(A, decreasing = TRUE)
cat("C (Decreasing Order) = ", C, "\n")



#8
matrix_3x4 <- matrix(1:12, nrow = 3, ncol = 4, byrow = TRUE)
print("Matrix is: ")
matrix_3x4


#9
RW_Matrix <- rbind(A, B, C)
print("RW_Matrix is: ")
RW_Matrix

CW_Matrix <- cbind(A, B, C)
print("CW_Matrix is: ")
CW_Matrix


#10
Second_row <- RW_Matrix[2.]
Third_row <- RW_Matrix[3.]
cat("2nd Row: ", Second_row, "\n")
cat("3rd Row: ", Third_row, "\n")


#11
First_Col  <- CW_Matrix[, 1]
Fourth_Col <- CW_Matrix[, 4]
cat("1st Col: ", First_Col, "\n")  #Error
cat("4th Col: ", Fourth_Col, "\n") #Error


#12
Sub_Matrix_RW_2_3 <- RW_Matrix[2,3]
cat("Sub_Matrix_RW_2_3 = ", Sub_Matrix_RW_2_3)

Sub_Matrix_RW_2_4 <- RW_Matrix[2,4]
cat("Sub_Matrix_RW_2_4 = ", Sub_Matrix_RW_2_4)


Sub_Matrix_cW_2_3 <- CW_Matrix[2,3]
cat("Sub_Matrix_cW_2_3 = ", Sub_Matrix_cW_2_3)

Sub_Matrix_cW_2_4 <- CW_Matrix[2,4]             #Error
cat("Sub_Matrix_cW_2_4=  ", Sub_Matrix_cW_2_4)  #Error

