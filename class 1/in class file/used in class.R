a <- 10
b <- 12
c <- a / b

d <- c(1,2,3,4,5,6,7,8,9,10)

e <- 1:30

# numeric
f <- c(0.2, 0.5)

# logical
g <- c(TRUE, FALSE)
h <- c(T,F)

# characters
i <- c("a", "b", "c")

# integer
j <- 9:29

# complex
k <- c(1+0i, 2+4i)

# transition
y <- 0:6
as.character(y)
as.logical(y)

# matrix
m <- matrix(nrow = 2, ncol = 3)
m
dim(m)

m <- matrix(1:6, nrow = 2, ncol = 3)
m
m[5]
m[2,3]

n <- c(2,3,4)
m <- rbind(m,n)
o <- c(5,7,2,2,4)
m <- cbind(m,o)


flights <- read.csv("class exercise/data/flights/On_Time_On_Time_Performance_2010_1/On_Time_On_Time_Performance_2010_1.csv")

mean(flights$ArrDelayMinutes, na.rm = T)
median(flights$ArrDelayMinutes, na.rm = T)
