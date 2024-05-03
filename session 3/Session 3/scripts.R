# list of names

names <- c("joko","budi","budi", "dedi", NA, NA)

# is.na -> return true untuk value NA
is.na(names)

# menghapus nilai NA
# is.na -> terurn true NA
# names[!is.na(names),]
names <- names[!is.na(names)]

names 

duplicated(names)