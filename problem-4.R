# Important variables from the given information

e <- 16 #expectation/average
std_dev <- 0.1
n <- 50
std_err <- std_dev/sqrt(n)

# 1. P(X < 15.95) ,but only a single can assuming it is distributed normally along the expectation

answer.1 <- pnorm((15.95-e)/std_dev)
answer.1

# 2. P(X < 15.95) ,of the average when 50 samples are taken

answer.2 <- pnorm((15.95-e)/std_err)
answer.2 


# 3. the 5th percentile

answer.3 <- e + (qnorm(0.05) * std_err)
answer.3

# 4. comparing the mean with answer.3
  
qc <- read.csv("QC.csv")
summary(qc)  #from the summary we can see after h3 and h8 the machine needs calibration

# 5. drawing a boxplot and identifing an outlier

boxplot(qc) #we can see h4, h6, h7, and h8 have outliers