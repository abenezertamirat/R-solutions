# Using discrete sample space

sample_space <- c(1,2,3,4,5)
n <- 75 
p <- c(1/5,1/5,1/5,1/5,1/5)  #probabilites of the values in my sample space
 
# Calculating the Expectation(E), SD(standard deviation), and SE(Standard Error)

e <- sum(sample_space*p)
var <- sum(((sample_space - e) ^ 2)*p)
std_dev <- sqrt(var) 
std_err <- std_dev / sqrt(n)

# Working out the probablities by using normal distribution as the approximation of
# the sampling distribution

# 1. P(E < 2)

answer.1 <- pnorm((2 - e)/std_err)
answer.1

# 2. 90th percentile of average

answer.2 <- e + (qnorm(0.9) * std_err)
answer.2

# 3. P(total < 200) for 75 students
# the same with P(E < 200/75)

answer.3 <- pnorm((200/75 - 3)/std_err)
answer.3

# 4. 90th percentile of total for n = 75

answer.4 <- answer.2 * n
answer.4