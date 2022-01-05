# Given information

n <- 100
b <- 10

# 1. Test for statistician A

## running the simulation 1000 times

stat.A = rep(0,1000)
for(i in 1:1000){
	sample <- runif(n, 0, b)
	stat.A[i] <- mean(sample) * 2
}

## calculating the expectation, variance and MSE
e.1 <- mean(stat.A)
variance.1 <- var(stat.A)
MSE.1 <- variance.1 + (e.1 - b)^2


# 2. Test for statistician B

## running the simulation 1000 times

stat.B = rep(0,1000)
for(i in 1:1000){
	sample <- runif(n, 0, b)
	stat.B[i] <- max(sample)
}


## calculating the expectation, variance and MSE
e.2 <- mean(stat.B)
variance.2 <- var(stat.B)
MSE.2 <- variance.2 + (e.2 - b)^2

"MSE.1 > MSE.2"
MSE.1 > MSE.2
"MSE.1 == MSE.2"
MSE.1 == MSE.2

# 3. 4. changing b to 13.7 and repeating the process

b = 13.7

# 3. Test for statistician A

## running the simulation 1000 times

stat.A = rep(0,1000)
for(i in 1:1000){
	sample <- runif(n, 0, b)
	stat.A[i] <- mean(sample) * 2
}

## calculating the expectation, variance and MSE
e.1 <- mean(stat.A)
variance.1 <- var(stat.A)
MSE.1 <- variance.1 + (e.1 - b)^2


# 4. Test for statistician B

## running the simulation 1000 times

stat.B = rep(0,1000)
for(i in 1:1000){
	sample <- runif(n, 0, b)
	stat.B[i] <- max(sample)
}


## calculating the expectation, variance and MSE
e.2 <- mean(stat.B)
variance.2 <- var(stat.B)
MSE.2 <- variance.2 + (e.2 - b)^2

"MSE.1 > MSE.2"
MSE.1 > MSE.2
"MSE.1 == MSE.2"
MSE.1 == MSE.2

# 5. comparing

"by seeing the result MSE.1 is greater that MSE.2, So statistician B's method give closer value"

