# zaokraglenie z arg domyslnym 
round(45.680, 2)
# ctrl shift D dubluje linikje kodu
# drugi arg - digits okresla liczbe cyfr po przecinku
?round
# f paste laczy stringi
paste("Ala", "ma", "kota")
paste("Ala", "ma", "kota", sep = "-")
round(1, 3.123)
# wartosc absolutna
abs(-345)
# pierw kwadrat
sqrt(81)

toupper("ala ma kota") # wielkie litery
tolower("ALA MA KOTA") # male litery

# wektor - sekwencja informacji o tym samym typie (numeric itp)
c(1, 2, 69, 23, 38, 169.9076)
c(T, F, T, T, 3)
# sekwencje
c(1:23)
c(1:500)
c(1, 3, 5, 7, 10:20, -100)
# operacje na wektorach
a <- c(1:5)
a * 2
b <- c(6:10)
b + 4
b - a
tydzien <- c("poniedzialek", "wtorek", "sroda", "czwartek", "piatek", "sobota", "niedziela")
tydzien[1]
tydzien[c(1, 3, 5)] # wyciaga konkretne pozycje wektora

thing <- c(1, 2, 3, 5, -10.6789)
abs(thing)
sqrt(thing)
round(thing)
# NaN -> not a number

oceny <- c(3, 4, 4.5, 5, 4, 3.5)
mean(oceny)
sd(oceny)

mean(c(3, 4, 5, NA))
# NA not available nie jest zerem
mean(c(3, 4, 5, NA), na.rm = T)

# operator porownania
2 == 2
100 == "100"
# r porownuje tylko zmienne o tym samym typie, wiec stringa sprowadzi do liczby, jesli sie da

# nierownosc
2 != 2

# koniunkcja (moze byc z 0 lub 1)
T & T
T & F
F & T
F & F

# alternatywa
T | T
T | F
F | T
F | F

# negacja
!T
!(2 == 2)
!(2 < 1)

# IFy
wiek_ali <- 10
if(wiek_ali < 18) {
  print("Ala jest niepełnoletnia")
}

wiek_ali <- 18

if(wiek_ali < 18) {
  print("Ala jest niepełnoletnia")
} else if (wiek_ali == 18) {
  print("Ala ma 18 lat")
} else {
  print("Ala jest pełnoletnia")
}

# petla for in
for(i in 1:10) {
  print(i)
}

for(i in c(1, 3, 7, 66, 1564)) {
  print(sqrt(i))
}

# sekwencje nieproste
a <- seq(1, 200, 7)
print(a)

janek <- seq(0, 200, 6)
for(i in janek) {
  print(i)
}

# petla while
i <- 0
while(i < 5) {
  print(i)
  i <- i + 1
}
# readline przypisuje input do podanej nazwy zmiennej
input <- readline(prompt = "Jesteś gupi!...")
while(input != "sam jesteś gupi!") {
  input <- readline(prompt = "Jesteś gupi!...")
}

a <- readline(prompt = "Napisz coś!...")

# wlasne funkcje
nazwa_funkcji <- function(arg1, arg2, arg3 = "wartość domyślna") {
  
}

silnia <- function(n) {
  wynik <- 1
  for(i in 1:n) {
    wynik <- wynik * i
  }
  return(wynik)
}

silnia(7)
