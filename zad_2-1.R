kwartal_1 <- c("Styczeń", "Luty", "Marzec")
kwartal_2 <- c("Kwiecień", "Maj", "Czerwiec")
kwartal_3 <- c("Lipiec", "Sierpień", "Wrzesień")
kwartal_4 <- c("Październik", "Listopad", "Grudzień")
rok <- c(kwartal_1, kwartal_2, kwartal_3, kwartal_4)

rok[c(1, 2)]

rok[c(8:12)]

rok[seq(1, 12, 2)]

l_liter <- nchar(rok)

mean(l_liter)

sd(l_liter)

zima <- rok[c(1, 2, 3, 12)]
liter_zima <- nchar(zima)

mean(liter_zima)
sd(liter_zima)
