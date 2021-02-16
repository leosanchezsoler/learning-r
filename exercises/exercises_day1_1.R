# First exercises (day1)

####################
#     Vectors     #
####################

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

vector <- c(2, 4, 5, 6)

6 %in% vector

# 12 - Write a R program to access the last value in a given vector

tail(vector, 1) # Use tail function

# 13 - Write a R program to find second highest value in a given vector

n <- length(vector)
sort(vector, partial=n-1)[n-1]

# 14 - Write a R program to find nth highest value in a given vector

find_n_value_vector <- function(your_vector, n){
  print(c('Your n:', n))
  print('The value:')
  print(sort(your_vector, T)[2])
}

find_n_value_vector(your_vector = vector, n=2)

# 16 - Write a R program to convert given dataframe column(s) to a vector

df <- data.frame(x = c(20, 21, 23, 26), y= c(96, 45, 34, 234))
vector_col <- as.vector(t(df))
class(vector_col)
vector_col

# 20 - Write a R program to reverse the order of a given vector
vector
rev(vector) # rev function

# 23 - Write a R program to convert two columns of a DataFrame to a named vector

my_df <- data.frame(code <- c('A', 'B', 'C', 'D'),
                    name <- c('Alba', 'Benito', 'Clara', 'Dio')
                    )

df_new_names <- setNames(as.character(my_df$name), my_df$code)
print(df_new_names)


################
#     List     #
################

# 1 - Write a R program to create a list containing strings, numbers, vectors, an logical values

my_list <- list(c('hola', 'adiós'), 45, 'Hello', FALSE)
my_list

# 8 - Write a R program to merge two given lists into one list

list1 <- list('hola, qué tal?', 'my name is Leo', 66, 4.7, T)
list2 <- list('muy bien, y tú?', 'my name is Aurelio', 55, F)

merged_list <- append(list1, list2)
merged_list
print(length(merged_list))

# 12 - Write a R program to convert a given dataframe to a list by rows

df_row_list <- split(df, seq(nrow(df))) # Here you choose how to split the df
df_row_list

# 14 - Write a R program to assign NULL to a given list element

assign_null_value <- function(list, position){
  list[[position]] <- NA
  print(c('your list:', list))
} 

assign_null_value(list = list1, position = 3)


######################
#     data.frame     #
######################

# 1 - Write a R program to create an empty data.frame

first_df <- data.frame(Date = as.Date(character()),
                       File = character(),
                       User = character(),
                       stringsAsFactors  = F)

str(first_df) # Check dataframe structure

# 2 - Write a R program to create a dataframe from four given vectors

first_vector <- c(2, 4, 6, 7)
second_vector <- c('A', 'E', 'I', 'O')
third_vector <- c(T, F, T, F)
fourth_vector <- c(3.4, 2.2, 6.5, 55.4)

df_from_vectors <- data.frame(first_vector, second_vector, third_vector, fourth_vector)


# 3 - Write a R program to get the structure of a given dataframe

str(first_df) # As in the exercise above

# 4 - Write a R program to get the statistical summary and nature of the data of a given dataframe

print('Here is the summary of your dataframe')
summary(df_from_vectors)

# 5 - Write a T program to extract specific column from a dataframe usign column name

df_from_vectors[, 'fourth_vector']

# 6 - Write a R program to extract first two rows from a given dataframe

df_from_vectors[1:2, ]

# 7 - Write a R program to extract third and fifth rows with first and third columns from a given dataframe

# Add a column
df_from_vectors[['fifth_col']] <- c('Hola', 'Adios', 'Buenas Tardes', 'Buenas noches')

# Add a row
df_from_vectors[nrow(df_from_vectors) +1, ] <- c('Hello!', 'Hey!', 'Buongiorno', 'Buona Sera')
df_from_vectors

df_from_vectors[c(3, 5), c(1, 3)]

# 8 - Write a R program to add new column in a given data frame

df_from_vectors$new_column <- c(1, 2, 4, 5)
df_from_vectors

# 9 - Write a R program to drop column(s) by name from a given data frame

new_row_df <- rbind(df, c(T, T))
new_row_df

# 10 - Write a R program to drop column(s) by name from a given data frame

dropped_cols <- subset(df_from_vectors, select = -c(first_vector, second_vector))
dropped_cols

# 11 - Write a R program to drop row(s) by number from a given data frame

dropped_rows <- df_from_vectors[-c(1, 4, 2), ]
dropped_rows

# 12 - Write a R program to sort a given data frame by multiple column(s)

df_from_vectors[with(df_from_vectors, order("first_vector"))]

df_from_vectors[order(df_from_vectors[, 4], df_from_vectors[, 1])]

# 13 - Write a R program to create inner, outer, left, right, join(merge) from given 2 dataframes

df_1 <- data.frame(c(1:4), c(2:5), c(3:6))
df_2 <- data.frame(c(2:5), c(1:4), c(3:6))
names(df_1) <- c('col1', 'col2', 'col3')
names(df_2) <- c('col1', 'col2', 'col3')

merged_dfs <- merge(df_1, df_2, by= 'col1')
merged_dfs

# 14 - Write a R program to replace NA values with 3 in a given data frame

df_na_to_replace <- data.frame('First column' = c(1, 3, 5, 3, 5),
                               'Second column' = c(4, 555, 3457, 324, 1),
                               'Third column' = c(NaN, NaN, NaN, NaN, NaN))

class(df_na_to_replace)

replace_nan_with_number <- function(df, n){
  df[is.na(df)] <- n
  return (df)
}
replace_nan_with_number(df = df_na_to_replace, n = 3)

# 15 - Write a R program to change a column name of a given data frame

change_col_name <- function(df, col_name, n){
  colnames(df)[n] <- col_name
  return (df)
}
change_col_name(df = df_na_to_replace, col_name = 'new name', n = 3)

# 16 - Write a R program to change more than one column name of a given data frame

df_na_to_replace
colnames(df_na_to_replace)[which(names(df_na_to_replace) == c('First.column', 'Second.column'))] <- c('new name 1', 'new name 2')
df_na_to_replace

# 17 - Write a R program to select some random rows from a given data frame

df_na_to_replace[sample(nrow(df_na_to_replace), 3), ]

# 18 - Write a R program to reorder an given data frame by column name

df_na_to_replace[, order(names(df_na_to_replace))]

# 19 - Write a R program to compare two data frames to find the row(s) in first data frame that are not present in second data frame

df_1 <- data.frame('index' = c('col1', 'col2', 'col3', 'col4'),
                   'the bridge' = c('data', 'full', 'ciber', 'ux/ui'),
                   'software' = c('python', 'java', 'C', 'indesign'),
                   )

df_2 <- data.frame('index' = c('first', 'second', 'third'),
                   'first_row' = c(1, 2, 34),
                   'second_row' = c(3, 4,33)
                   )

setdiff(df_1, df_2) # Use setdiff

# 20 - Write a R program to find elements which are present in two given dataframes

df_1 <- c(1, 2, 4, 5)
df_2 <- c(1, 4, 2, 4)

common_values <- intersect(df_1, df_2)
common_values

# 21 - Write a R program to find elements come only once that are common to both given data frames

values_that_only_come_once <- union(df_1, df_2)
values_that_only_come_once

# 22 - Write a R program to save the information of a data frame in a file and display the information of the file

save(df_1, file='data_example.rda') # use save to save the file

load('data_example.rda') # load the dataset

file.info('data_example.rda') # get info of the file

# 23 - Write a R program to count the number of NA values in a data frame column

NaN_sum <- sum(is.na(df_na_to_replace$Third.column))
print('Total NaN values in the data frame:')
print(NaN_sum)

# 24 - Write a R program to create a data frame using two given vectors and display the duplicated elements and unique rows of the said data frame

df_na_to_replace
print(duplicated(df_na_to_replace)) # show duplicated values
print(unique(df_na_to_replace)) # show unique values

# 25 - Write a R program to call the (built-in) dataset airquality.
# Check whether it is a dataframe or not? Order the entire dataframe by the first and second column

dataset <- airquality #Load the dataset
class(dataset) # Check the type

ordered_dataset <- dataset[order(dataset[, 1]), ]
ordered_dataset

# 26 - Write a T program to call the (built-in) dataset airquality.
# Remove the variables 'Solar.R' and 'Wind' and display the data frame

dataset <- airquality
dataset
removed_df <- subset(dataset, select = -c(Solar.R, Wind))
removed_df


##############
#   Basic   #
##############

# 3 - Write a R program to create a sequence of numbers from 20 to 50 and find the mean of numbers from 20 to 60
# and sum of numbers from 51 to 91

seq(20, 50) # sequence from 20 to 50

mean(seq(20,60)) # mean of numbers from 20 to 60
     
sum(seq(51,91)) # sum of numbers from 51 to 91

# 4 - Write a R program to create a vector which contains 10 random integer values between -50 and 50

sample(seq(-50, 50), 10) # Create a random sample of numbers from -50 to 50

# 5 - Write a R program to get the first 10 fibonacci numbers

numbers <- numeric(10)
numbers[1] <- numbers[2] <- 1
for (i in 3:10)
  numbers[i] <- numbers[i -2] + numbers[i -1]
numbers

# 7 - Write a R program to print the numbers from 1 to 100 and print 'Fizz' for multiples of 3
# Print 'buzz' for multiples of 5
#Print 'FizzBuzz' for multiples of both

seq_100 <- seq(1, 100)

for (i in seq_100) {
  if (i %% 3 == 0 & i %% 5 == 0)
    {print("FizzBuzz")}
  else if (i %% 3 == 0)
    {print("Fizz")}
  else if (i %% 5 == 0)
    {print("Buzz")}
}

# 9 - Write a R program to find the factors of a given number
# Use a for loop to iterate through the numbers

factor_of_number <- function(number){
  for (i in 1:number){
    if ((number %% i) == 0){
      print(i)
    }
  }
}

factor_of_number(number = 20)

# 10 - Write a R program to find the maximum and the minimum value of a given vector

find_max_and_min <- function(vector){
  max_value <- max(vector)
  min_value <- min(vector)
  print('Max value:')
  print(max_value)
  print('min value:')
  print(min_value)
}

find_max_and_min(vector=c(2, 5, 6, 90))

# 13 - Write a R program to create a list of random numbers in normal distribution and count occurrences of each value

random_numbers <- floor(rnorm(100, 10, 10))
random_numbers

table(random_numbers) # To count the occurrences of each value

# 15 - Write a R program to create three vectors numeric data, character data and logical data. Display the content of the vectors and their type

numeric_vector <- c(1, 3, 5, 7, 9)
character_vector <- c('hola', 'adios', 'hasta luego', 'ahora nos vemos', 'k ase')
logical_data <- c(T, F, F, F, T)

vectors_list <- list(numeric_vector, character_vector, logical_data)

for (i in 1:(length(vectors_list))){
  print(vectors_list[[i]])
  print(class(vectors_list[[i]]))
}

# 22 - Write a R program to create bell curve of a random normal distribution
random_numbers <- floor(rnorm(100, 10, 10))
table_random_numbers <- table(random_numbers) # Gets the counts of each value
barplot(table_random_numbers)

# 25 - Write a R program to create a Dataframe which contain details of 5 employees and display the details

employees_df <- data.frame(Name = c('Dio', 'Gabriel', 'Clara', 'El resto'),
                           Age = c(27, 28, 26, 200),
                           Location = c('Madrid', 'Extremadura', 'Andalucía', 'España'))

summary(employees_df)

# 26 - Write a R program to create a data frame which contains details of 5 employees and display the summary of the data

# It's done in the exercise above
