x <- read.csv("hw1_data.csv")
names(x)
head(x,n=2)
nrow(x)
tail(x,n=2)
Ozone(x)[47]
x[47,Ozone]
Ozone(x)
Ozone
x$Ozone[47]
sum(is.na(x$Ozone))
mean(x,na.rm=TRUE)
mean(x, na.rm = TRUE)
mean(x$Ozone, na.rm = TRUE)
z <- subset(x, (Ozone > 31) & (Temp > 90))
mean(z$Solar.R)
q <- subset(x,Month == 6)
q
mean(q$Temp)
max(x$Ozone, na.rm=TRUE)
s <- subset(x,Month == 5)
s
max(s$Ozone, na.rm=TRUE)
x <- c(4, "a", TRUE)
class(x)
m <- c(1, 3, 5)
n <- c(3, 2, 10)
o <- cbind(m , n)
o
x <- 1:4
y <- 2
z <- x + y
z
x <- c(17, 14, 4, 5, 13, 12, 10)
x[x > 10] == 4
x
x[x > 10] <- 4
x
