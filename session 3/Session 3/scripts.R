# list of names

names <- c("joko","budi","budi", "dedi", NA, NA)

duplicated(names)
# budi yang kedua false juga karena kita nandain untuk tidak di compare dengan data sebelumnya
duplicated(names, incomparables = c("budi"))

# is.na -> return true untuk value NA
is.na(names)

# menghapus nilai NA
# is.na -> terurn true NA
# names[!is.na(names),]
names <- names[!is.na(names)]

names 

duplicated(names)

# remove dupicate data

names <- names[!duplicated(names)]

names


# data frame sendiri
student <- c("budi", "joko", "joko", "budi", NA, NA)

score <- c(NA,100,90,75,NA,80)

student 
score

df <- data.frame(students = student,scores =score)

#data frame
df

# remove baris yang score na ,  buat ambil semokolom
# df <- df[!is.na(df$scores),]
# df

# remove baris yang score na ,  buat ambil semokolom
# df <- df[!is.na(df$students),]
# df

#remove na data frame
# na.omit untuk remove na di data frame
df <- na.omit(df)

duplicated(df$students)

df <- df[duplicated(df$students),]
df



