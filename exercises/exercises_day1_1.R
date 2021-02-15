# First exercises (day1)
#####################
# 3 - write a program yo append value to a given empty vector
vector <- c()
values <- c(4, 2, 3.6, 8)

for (i in 1:length(values))
  vector[i] <- values[i]
print(vector)

# 6 - Write a R program to find Sum, Mean and Product of a Vector
sum_mean_prod_function <- function(your_vector){
  vector_mean <- mean(your_vector)
  print(c('Vector mean:', vector_mean))
  
  vector_sum <- sum(your_vector)
  print(c('Vector sum:', vector_sum))
  
  vector_prod <- prod(your_vector)
  print(c('Vector Product:', vector_prod))
}

sum_mean_prod_function(your_vector = values)

# 7 - Write a R program to find Sum, Mean and Product of a Vector, ignore element like NA or NaN

no_nan_sum_mean_prod_function <- function(your_vector){
  your_vector <- your_vector[!is.na(your_vector)]
  vector_mean <- mean(your_vector)
  print(c('Vector mean:', vector_mean))
  
  vector_sum <- sum(your_vector)
  print(c('Vector sum:', vector_sum))
  
  vector_prod <- prod(your_vector)
  print(c('Vector Product:', vector_prod))
}
  # Define new value with NaNs
new_value <- c(3, NaN, 4.5, F, 6)

no_nan_sum_mean_prod_function(your_vector = new_value)

# 8 - Write a R program to find the minimum and the maximum of a vector

min_max_vector <- function(your_vector){
  min_value <- min(your_vector)
  print(c('Minimum value:', min_value))
  
  max_value <- max(your_vector)
  print(c('Max value:', max_value))
}
min_max_vector(your_vector = new_value)

# 9 - Write a R program to sort a Vector in acending and descending order

ascending_descending_vector <- function(your_vector, sort=TRUE){
  if (sort){
    vector_sorted <- sort(your_vector, decreasing = T)
    print(c('Vector sorted', vector_sorted))
  } else {
    vector_sorted <- sort(your_vector, decreasing = F)
    print(c('Vector Sorted', vector_sorted))
  }
}
ascending_descending_vector(your_vector = new_value, sort=F)
  
# 10 - Write a R program to test whether a given vector contains a specified element

