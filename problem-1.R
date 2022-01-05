# Important varibales for the given information

min <- 1
max <- 5
n <- 75 

# Calculating the Expectation(E), SD(standard deviation), and SE(Standard Error)

e <- (min + max)/2
std_dev <- (max-min)/sqrt(12)
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