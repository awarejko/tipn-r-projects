library(ggplot2)

library(dplyr)

# Zad_5-1

library(readr)
movies <- read_csv("movies.csv")
View(movies)

# Zad_5-2

filter(movies, Comedy == 1)

# Zad_5-3

movies %>% select(title, year, budget) %>% arrange(desc(budget))

# Zad_5-4

anim <- movies %>% select(title, Animation, year, rating) %>% 
  filter(year == 1990:1999) %>% filter(Animation == 1) %>% arrange(desc(rating))
View(anim)

# Zad_5-5

dramas <- movies %>% select(title, Drama, length) %>% filter(Drama ==1) %>% arrange(desc(length))
View(dramas)

# Zad_5-6

mpaa_R <- movies %>% select(mpaa, rating) %>% filter(mpaa == "R")
rsum <- summarise(mpaa_R, rating_mean = mean(rating, na.rm = T),
                      rating_sd = sd(rating, na.rm = T))
View(rsum)
mpaa_13 <- movies %>% select(mpaa, rating) %>% filter(mpaa == "PG-13")
pg13sum <- summarise(mpaa_13, rating_mean = mean(rating, na.rm = T),
                     rating_sd = sd(rating, na.rm = T))
View(pg13sum)
mpaa_pg <- movies %>% select(mpaa, rating) %>% filter(mpaa == "PG")
pgsum <- summarise(mpaa_pg, rating_mean = mean(rating, na.rm = T),
                   rating_sd = sd(rating, na.rm = T))
View(pgsum)