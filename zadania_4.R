# zadanie 4-1

  # zbiór mpg ma 11 zmiennych
  # obserwacji jest 234
  # engine displacement to pojemność silnika, miles per gallon to amerykańska wersja litrów na 100 km.
  # zmienne:
    # manufacturer - producent
    # model - modelu samochodu
    # displ - pojemność silnika
    # year - rocznik
    # cyl - liczba cylindrów
    # trans - typ skrzyni biegów (automat i manual, zapewne)
    # drv - napęd; f - na przednie koła; r - na tylne koła, 4 = na 4
    # cty - ile mil przejadę w mieście na 4.55 litra paliwa
    # hwy - jak wyżej, tylko na autostradzie
    # fl - typ paliwa
    # class - "typ" samochodu

# zadanie 4-2

  ggplot(data = mpg) +
    geom_point(mapping = aes(x = displ, y = cty),
               position = "jitter")

# zadanie 4-3
  
  ggplot(data = mpg) +
    geom_bar(mapping = aes(x = class, fill = class)) +
    labs(title = "Number of cars in classes", x = "Class", y = "Number of cars")
  
# zadanie 4-4
  
  ggplot(data = mpg) +
    geom_histogram(mapping = aes(displ), bins = 15) +
    labs(title = "Pojemności silnika", x = "Pojemność", y = "Liczba samochodów")

# zadanie 4-5
  
  ggplot(data = mpg, aes(x = class, y = displ)) +
    geom_boxplot() +
    coord_flip() +
    labs(title = "Pojemność silnika w klasach", x = "Klasa", y = "Pojemność silnika")
  

  