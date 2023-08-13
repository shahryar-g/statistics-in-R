nloop = 1000000
sampmean = 1:nloop
for(iloop in 1:nloop){
  x = sample(0:2 , 100 ,replace = TRUE, prob = c(3/10,5/10,2/10))
  a0 = sum(x==0)
  a1 = sum(x==1)
  a2 = sum(x==2)
  t[iloop] = abs(a0 - 30) + abs(a1 - 50) + abs(a2 - 20)
}
hist(t,br = 150, col = "beige")
ss = sort(t)
ss[0.025*nloop]
ss[0.975*nloop]

y = sample(0:2 , 100 ,replace = TRUE, prob = c(4/10,4/10,2/10))
b0 = sum(y==0)
b1 = sum(y==1)
b2 = sum(y==2)
u  = abs(b0 - 30) + abs(b1 - 50) + abs(b2 - 20)
print(u)