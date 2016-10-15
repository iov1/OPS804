# Class exercise 1

## Assignments

### Set the working directory to your working path
setwd("~/Documents/work/SMC/classes/OPS804/github/class 1/")

### Assign the value "8" to the variable "a"
a <- 8

### Assign the value "9" to the variable "b"
b <- 9

### Multiply the "a" times "b"
a * b

### Assign the value "foo" to the variable c
c <- "foo"

### Assign the value "bar" to the variable d
d <- "bar"

### Multiply "c" times "d"
# doesn't work...

### Combine "c" and "d"
paste(c, d)

### Assign the values "2, 2, 7, 2, 3, 9, 3, 2, 8, 4, 5, 9" to the array "e"
e <- c(2, 2, 7, 2, 3, 9, 3, 2, 8, 4, 5, 9)

### Assign the values "6, 2, 1, 7, 8, 2, 1, 9, 6, 3, 3, 1" to the array "f"
f <- c(6, 2, 1, 7, 8, 2, 1, 9, 6, 3, 3, 1)

### Assign the values "5, 1, 2, 3" to the array "g"
g <- c(5, 1, 2, 3)

### Multiply "e" times "f"
e * f

### Multiply "e" times "g"
e * g

### Read in the csv file "On_Time_On_Time_Performance_2010_1" from the folder "data/flights" into the data.frame flights.2010
flights.2010 <- read.csv("class exercise/data/flights/On_Time_On_Time_Performance_2010_1/On_Time_On_Time_Performance_2010_1.csv")

### Take a look at the structure of the imported data.frame
str(flights.2010)
