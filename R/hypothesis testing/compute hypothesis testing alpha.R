nloop = 1000000
sampmean = 1:nloop
for(iloop in 1:nloop){
  x = sample(0:3 , 30 ,replace = TRUE, prob = c(0.65,0.18,0.10,0.07))
  sampmean[iloop] = mean(x)
}
hist(sampmean,br = 150, col = "beige")
sum(sampmean<0.3)/nloop
ss=sort(sampmean)
ss[0.05*nloop]