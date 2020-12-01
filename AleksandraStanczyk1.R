#Zadanie 1

a=4
b=2
SPR <- a%%b
SPR <- as.logical(SPR)
SPR


#Zadanie2 


V1 <- 120
V2 <- 90
V <- (2*V2*V1)/(V1+V2)
V

#Zadanie3
dane <- read.table(file = "C:/Users/Mateusz/Downloads/dane.csv", header = TRUE ,sep = ";", dec = ",")
dane
cor.test(dane$waga, dane$wzrost, method = "pearson")
#wynik oznacza bardzo silna zaleznosc liniowa

#Zadanie4

ramka1 = data.frame(wek_logi = c(TRUE, FALSE, FALSE),
                    wek_waga = c(5L, 10L, 12L),
                    wek_wysokosc = c(15, 30 ,45),
                    wek_gatunek = c("kot", "pies", "lew"),
                    stringsAsFactors = FALSE )
ramka1

#Zadanie 5
install.packages("data.table")
library(data.table)
setwd("C:/Users/Mateusz/Downloads/smogKrakow")


files <- list.files(pattern = ".csv")
temp <- lapply(files, fread, sep=",")
data <- rbindlist(temp)
write.csv(data, file = "wszystkie.csv", row.names = FALSE)

SK <- read.table("wszystkie.csv", head = TRUE, sep = ",", dec = ";" )
head(SK)

max(SK[, "X228_pressure"], na.rm = TRUE)
median(SK[, "X228_pressure"], na.rm = TRUE)
mean(SK[, "X228_pressure"], na.rm = TRUE)
min(SK[, "X228_pressure"], na.rm = TRUE)


