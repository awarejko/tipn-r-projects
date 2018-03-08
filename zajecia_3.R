# zagnieżdżony for
wektor <- c("ale", "to", "super", "fajne", "jest")
wektor_2 <- c(100:102)

for(liczba in wektor_2){
  print(liczba)
  for(slowko in wektor) {
    print(slowko)
  }
}

# przy pisaniu funkcji należy nie drukować, ale zwracać wartości, żeby możliwe było reusability.
# printowanie jest bezużyteczne dla komputera, jak dźwięki dla głuchego. Use sign language.
# chyba tak to można porównać
# wartości domyślne są po to, żeby funkcja działała, jak nie dostanie argumentów, które mają tą wartość.
# funkcja powinna być samowystarczalna, więc musi mieć wewnątrz zdefiniowane zmienne, 
# które zamkną czarną skrzynkę
# code -> function robi ektrakcję funkcji i jako argumenty bierze to, co nie jest zdefiniowane

# all aboard the git train

