library(ggplot2)

set.seed(123)

n = 100
x = 1:n/(n+1)

beta0 = 10
beta1 = 2

expy = beta0 + beta1*x

mu = 0.0

sigma1 = 2.7
err1 = rnorm(n, mu, sigma1)
yobs1 = expy + err1
p1 = qplot(x,yobs1)
p1 = p1 + geom_abline( intercept = beta0, slope = beta1)
p1


sigma2 = 0.7
err2 = rnorm(n, mu, sigma2)
yobs2 = expy + err2
p2 = qplot(x,yobs2)
p2 = p2 + geom_abline( intercept = beta0, slope = beta1)
p2

sigma3 = 0.27
err3 = rnorm(n, mu, sigma3)
yobs3 = expy + err3
p3 = qplot(x,yobs3)
p3 = p3 + geom_abline( intercept = beta0, slope = beta1)
p3
