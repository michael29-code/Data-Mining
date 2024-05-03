# commend

# variable bisa pake <-

name <- "michael"

#  =

name1 = "budi"

name

name1

"tim" -> name2 #bisa pake petik satu

# int string double 

# num itu bsia koma, int hanya integer

# pembagian jenis tipe data
# scalar -> nampung 1 data aja, static (int, string, double)

# non scalar -> arraynya kayak vector, matrix, (table ini ga di pelajarin)


# vector, harus 1 tipe data, kalau di gabung bisa aja
# case kalau string trus dimasukin integer nanti bakal kebaca string

# membuat vecotr 
# combine -> tipe data yang non skalar
# : -> slicing
vect1 <- c(1,2,3,4,5)
vect2 <- c(1:100)

#cara menampilkan

vect1

#akses value -> sama kayak akses array biasa
vect1[1]
vect2[15]

# slicing array gabisa
#vect[1:]


# matrix
# ada buildin function matrix()
mtx1 <- matrix(
  c(1:50), 
  nrow = 5, 
  ncol=5, 
  byrow = TRUE, 
  dimnames = list(
    c("row1", "row2", "row3", "row4", "row5"),
    c("col1", "col2", "col3", "col4", "col5")
  )
)
mtx1


#acces value matrix
mtx1[1][]

mtx1[1][1]

mtx1[1,2]

mtx1[1,]

#name_matrix[row,col]
#col tidak dikasih berapa maka akan diambil seluruhnya
#begitu juga sebaliknya


# perkalian setiap value dari dimensi matrix
mtx2 <- matrix(c(1:5), nrow = 5, ncol = 5)
mtx2

#perkalian matrix, rulesnya col row 

mtx1 * mtx2

# perkalian matrix
mtx3 <- matrix(c(1,2,3,4))
mtx4 <- matrix(c(1,1,1))

mtx3 %*% mtx4



#functions
f1 <- function(x,y)
{
  total <<- x + 7 #jadiin keluar function global var panah dua
}

f1(1,2)

total

f2 <- function()
{
  "hellow rold"
}

f2()


#import data
score <- read.csv(file = 'Score.csv', fileEncoding = 'UTF-8-BOM') 
score

score$Course.Code
