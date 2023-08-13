nloop = 100000
count = 0
for(iloop in 1:nloop){
  x = sample(1:4,100,replace = TRUE,prob = c(0.2,0.25,0.3,0.15,0.1))
  if(sum(x==4) > sum(x==0)){count = count + 1}
}
count/nloop