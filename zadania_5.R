library(ggplot2)

library(dplyr)

# Zad_5-1

library(readr)
movies <- read_csv("movies.csv")
View(movies)

# Zad_5-2

filter(movies, year == 2005)

# Zad_5-3

movies %>% select(title, year, budget) %>% arrange(desc(budget))

# Zad_5-4

movies %>% select(Animation, year) %>% filter(year == 1990)

# Zad_5-5

movies %>% select(Drama, length) %>% arrange(desc(length))