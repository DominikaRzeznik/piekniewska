#1
install.packages("stringr")
library(stringr)
plik1 = c("18; podkarpackie; RzeszÃ³w; 0.2 He A")


str_sub ( plik1, start = 32, end = 36 )

#2

horoskop = function (imie, miesiac) ( if( miesiac %in% c(2, 4, 6, 8, 10, 12)) cat(paste ("Osoba o imieniu", imie, "bÄ™dzie miaÅ‚a szczÄ™Å›cie")) )else(cat(paste("osoba o imieniu", imie, "bÄ™dzie miaÅ‚a nieszczÄ™Å›cie")) )

horoskop = function(imie, miesiac){
  if (miesiac %in% c(2,4,6,8,10,12)) {
    cat(paste("osoba o imieniu", imie, "bêdzie mia³a jutro szczêœcie"))
  } else {
    cat(paste("osoba o imieniu", imie, "bêdzie mia³a jutro nieszczêœcie"))
  }
}

horoskop("dominika", 7)

 #3 

horoskop = function(imie, miesiac){
  if (miesiac %in% c(2,4,6,8,10,12)|
      (str_detect(imie, pattern = "K")|
       str_detect(imie,pattern = "M")|
       str_detect(imie, pattern = "Z"))){
    cat(paste("osoba o imieniu", imie, "bêdzie mia³a jutro szczêœcie"))
  } else{
    cat(paste("osoba o imieniu", imie, "bêdzie mia³a jutro nieszczêœcie"))
  }
}
horoskop("Monika",8)

#4

danewejsciowe = c("2019-03-11: 23.5, 
         19/03/12: 12.7,
         2019.03.13: 11.1, 
         2019-marzec-14: 14.3")
danewejsciowe = str_replace(danewejsciowe,
                   pattern = "2019.03.13",
                   replacement = "2019-03-13")
danewejsciowe = str_replace_all(danewejsciowe, 
                       pattern = "[\\/]", 
                       replacement = "\\-")
danewejsciowe
str_extract_all(danewejsciowe, 
                pattern = "[0-9]+[\\-][a-z0-9]+[\\-][0-9]*")
#Zadanie 5
danew2 =  str_extract_all(danewejsciowe, 
                         pattern = "[0-9]+[\\.][0-9]")
danew2

