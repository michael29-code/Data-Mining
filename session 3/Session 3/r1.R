df <- read.csv("supermarket_sales - Sheet1 (1).csv", fileEncoding =  "UTF-8-BOM", na.strings = "N/A")

df

# remove data yang kosong
df -> na.omit(df)
df

# remove duplicate data
df <- df[!duplicated(df$Invoice.ID),]
df


# select beberapa kolom
df <- subset(df,df$Branch %in% 'A', select = c("Branch", "City", "Customer.type", "Gender", "Unit.price","Quantity"))
df <-df[!is.na(df$Gender),]
df


# mencari total nilai dari unitprice * quantity

total <- df$Unit.price * df$Quantity
total

df$Total <- total
df


genderF <- df$Gender == 'Female' <- 'F'
genderF

genderF <- df$Gender == 'Male' <- 'M'

df$Gender <- genderF
df

# mean 
mean(df$Total)
# median

median(df$Total)

summary(df)