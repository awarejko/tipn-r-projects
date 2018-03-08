i <- as.numeric(readline(prompt = "wpisz rok..."))

while (i <= 2018) {
  if(i %% 4 == 0) {
    if(i %% 100 != 0) {
      print(i)
    }
  } else if(i %% 400 == 0) {
    print(i)
  } 
  i <- i + 1
}
# nie wiem dlaczego działa tylko jak się odpali osobno i i pętlę