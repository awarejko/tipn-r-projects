years <- c(1800:2018)

for (i in years) {
  if(i %% 4 == 0) {
    if(i %% 100 != 0) {
      print(i)
    }
  } else if(i %% 400 == 0) {
    print(i)
  } else {
    i <- i + 1
  }
}
