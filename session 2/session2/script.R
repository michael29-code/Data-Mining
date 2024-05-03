# a = c(1,2,3,4)
# b = c(4,2,1,3)

# plot(a,b, type="o")
# plot(a,b, type="l")


# plot(a,b, type="l", col = "red")
# plot(a,b, type="l", col = "#0000FF")

# plot(a,b, type="l", col = "#0000FF", xlab = "bawah" , ylab = "samping")
# plot(a,b, type="l", col = "#0000FF", xlab = "bawah" , ylab = "samping" , main = "Plot Testing")


report = read.csv("Report.csv") # ngubah jadi data frame

plot(report$Year,report$Income, type ="l", xlab = "Year", ylab = "Cash", col = "blue", ylim = c(0,250000), main = "Yearly Report", cex.main = 2, cex.lab = 1.5)

lines(report$Year,report$Expense, type="l", col = "red")

legend("topleft", legend = c("Income", "Expense"), cex = 1, fill = c("blue", "red"), title = "Legen")

# kalau ada  i... itu ganti fileencodingnya
# score = read.csv("Score.csv", fileEncoding = "UTF-8-BOM")
score = read.csv("Score.csv")
colnames(score) = c("Name", "Course","Assignment", "Mid.Exam", "Final.Exam")

#rm(a) #ngilangin a
#rm(b)

scoreCourseA = score[score$Course == 'A',]

# pie(scoreCourseA$Assignment, labels = scoreCourseA$Name, cex = 1.5)
pie(scoreCourseA$Assignment, labels = paste(scoreCourseA$Name, scoreCourseA$Assignment, sep = "-"), cex = 1.5, col = rainbow(3), main = "Assignment Score Course A", cex.main = 2)

avgAsgA = mean(score[score$Course == 'A', "Assignment"])
avgAsgB = mean(score[score$Course == 'B', "Assignment"])
avgAsgC = mean(score[score$Course == 'C', "Assignment"])


avgAsg = c(avgAsgA,avgAsgB,avgAsgC)
courseName = score[!duplicated(score$Course), "Course"]

# barplot(avgAsg, names.arg = c("A","B","C"))
barplot(avgAsg, names.arg = courseName , ylim = c(0,100), col = rainbow(length(avgAsg)), xlab = "Course", ylab = "Avg Score", main = "Average Assignment Score")

hist(score$Assignment, xlab = "Score", main = "Histogram of Assignment Score", col = rainbow((4)))



boxplot(score$Mid.Exam ~ score$Course, xlab = "Course", ylab = "Mid Exam", col = rainbow(3))

## HOW TO SORT DATA
allNameCourse = score[, c(1:2)]

# tambahin column baru
allNameCourse$totalScore = rowMeans(score[,c(3:5)])

# group by name, lalu di hitung rata2nya
allScore = aggregate(allNameCourse$totalScore, 
                     by=list(allNameCourse$Name),
                     FUN = mean)
colnames(allScore) = c("Names", "Final.Score")

# sort
allScore = allScore[order(allScore$Final.Score), ]

# bar plot
barplot(allScore$Final.Score)