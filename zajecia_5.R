# dplyr i import danych
# format szeroki tabeli - dużo zmiennnych, mało obserwacji
# format wąski - mało zmiennych, dużo obserwacji
# do R można importować:
#   csv - comma separated values
#   xlsx
#   bazy danych
#   jason (?)
#   inne

# library(readr)
# crime_in_us <- read_delim("Dokumenty/technologie/tipn/datasets/crime_in_us.csv", 
#                           ";", escape_double = FALSE, trim_ws = TRUE)
# View(crime_in_us)

library(nycflights13)
flights
View(flights)
?flights

filter(flights, month == 5, day == 13)
loty_z_jfk <- filter(flights, origin == "JFK")
filter(loty_z_jfk, month == 6, day == 3)

# sortowanie z arrange()
arrange(flights, distance)$distance
arrange(flights, desc(arr_delay)) # sortuje descending, czyli malejąco
# z większą ilością zmiennych robi po kolei jak ma podane
# wybierz niektóre dane - select()
select(flights, carrier, flight)
select(flights, year:day)
# zmienne mają kolejność, więc przedział wybiera zmienne pomiędzy podanymi

# nowe zmienne na podstawie starych - mutate()
flights_sml <- select(flights, year:day, ends_with("delay"))
mutate(flights_sml, gain = arr_delay - dep_delay)

# podsumowania - summarise()
summarise(flights, distance_mean = mean(distance, na.rm = T), 
          distance_sd = sd(distance, na.rm = T)) # na.rm wywala braki danych

# grupowanie - group_by()
# n() liczy ile jest wystąpień danego elementu w grupie
flights_origins <- group_by(flights, origin)
summarise(flights_origins, dep_delay_mean = mean(dep_delay, na.rm = T))

# hydraulika
# rura %>% bierze to co po lewej i wrzuca to jako pierwszy argument do tego co po prawej