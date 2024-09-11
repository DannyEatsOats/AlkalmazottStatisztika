########## 2024.09.11 - gyakorlas ###########

setwd("C:/Users/cab/Desktop/Sigma") # munkakönyvtár beállítása
getwd()                             # M.K lekérése
dir()                               # M.K listázása

# adatb. letárolása 'kerdoiv' valtozoba
kerdoiv <- read.table('kerdoiv.csv', header=TRUE, sep=";", na.strings="", dec=",", strip.white=TRUE, stringsAsFactors=TRUE, fileEncoding = "")

#sorok/ mintaelem szám
nrow(kerdoiv)

summary(kerdoiv$Hajszin)

#adatb becsatolasa, nem kell ra kivatkozni
attach(kerdoiv)
summary(Hajszin)

#tablazat keszitese
table(Hajszin)

#relativ gyakorisag
prop.table(table(Hajszin))

#kordiagram
pie(table(Hajszin))

#oszlopdiagram
barplot(table(Hajszin))
