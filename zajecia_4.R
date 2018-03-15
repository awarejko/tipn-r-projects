# Hadley Wickham
# spoko gość z nowej zelandii
# tibble - tabela, zbiór wektorów o jednakowej długości

#wybieranie diamentów ze zbioru o tejże nazwie
sto_diam <- diamonds[sample(nrow(diamonds), 100),]

# wykres punktowy
ggplot(data = sto_diam) +
  geom_point(mapping = aes(x = carat, y = price, shape = cut),
             position = "jitter")
# geom_point robi wykresy punktowe
# aes - aesthetic, coś co informuje ggplot, co ma gdzie umieścić
# jak się zrobi color = cośtam, to pokoloruje kropki

# facets
ggplot(data = sto_diam) +
  geom_point(mapping = aes(x = carat, y = price)) +
  facet_wrap(~ cut, nrow = 2)

# geom_smooth
ggplot(data = sto_diam) +
  geom_smooth(mapping = aes(x = carat, y = price))

# FUSION!!
ggplot(data = sto_diam, mapping = aes(x = carat, y = price)) +
  geom_point() +
  geom_smooth()

# słupki
ggplot(data = sto_diam) +
  geom_bar(mapping = aes(x = cut))

# kolorowe słupki
ggplot(data = sto_diam) +
  geom_bar(mapping = aes(x = cut, fill = cut))

# inne kolorowe słupki - dwie zmienne w jednym słupku
ggplot(data = sto_diam) +
  geom_bar(mapping = aes(x = cut, fill = color), position = "fill")

# position = "dodge"
ggplot(data = sto_diam) +
  geom_bar(mapping = aes(x = cut, fill = color), position = "dodge")

# wykres kolumnowy ze średnią ceną, przyjmuje y
ggplot(data = sto_diam) +
  geom_col(mapping = aes(x = clarity, y = mean(price)))

# boxplot
ggplot(data = sto_diam, aes(x = clarity, y = price)) +
  geom_boxplot()
# "+ coord_flip()" robi obrót o 90 stopni

# histogram - rozkład zmiennej na przedziałach, tylko dla zmiennych ciągłych
ggplot(data = diamonds) +
  geom_histogram(mapping = aes(price), binwidth = 1000) # bins robi ilość przedziałów

# nazwy osi
ggplot(data = sto_diam) +
  geom_point(mapping = aes(x = carat, y = price)) +
  labs(title = "Tytuł wykresu", x = "Karaty", y = "Cena") +
  theme_minimal()
# themów jest dużo, różnią się subtelnie od siebie nawzajem
# ggplot2.tidyverse.org <- wincyj

