n = 1000
plot(qgamma(1:n/(n+1),3,4),sort(rnorm(n,1,.5)),xlab = "population quantile",
     ylab = "sample quantile")
lines(c(0,2),c(0,2))