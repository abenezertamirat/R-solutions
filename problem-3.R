# Important information varaibles from the problem. It is exponential dist

e <- 22
n <- 80
rate <- 1/e
var <- 1/rate^2
std_dev <- sqrt(var)
std_err <- std_dev/sqrt(n)

# 1. P(X > 20)
# the same as 1 - P(X <= 20)

answer.1 <- 1 - pnorm((20 - 22)/std_err)
answer.1

# 2. 95th percentile of the average

answer.2 <- e + (qnorm(0.95) * std_err)
answer.2
