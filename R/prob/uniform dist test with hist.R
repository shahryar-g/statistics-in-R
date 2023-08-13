nloop = 1000000
waitime = 1:nloop
count = 0
for(iloop in 1:nloop){
  x = runif(3) * 20
  waitime[iloop] = min(x)
  if(waitime[iloop] > 5){count = count + 1}
}
count/nloop
br = 200
hist(waitime,breaks = br,freq = TRUE ,col = 'beige')