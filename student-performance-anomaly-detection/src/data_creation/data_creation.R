student_data <- data.frame(
  student_ID = c(1,2,3,4,5,6,7,8,9,10),
  grade = c(85,70,90,78,92,88,76,95,89,40),
  attendance = c(90,80,95,85,92,88,80,95,90,60),
  age = c(16,17,16,17,18,19,16,17,18,16),
  gender = c("m","f","m","f","m","m","m","f","f","f")
)
library(ggplot2)

summary(student_data)

ggplot(student_data, aes(x=grade)) +
  geom_histogram(bins=10, color="black", fill="lightblue")

ggplot(student_data, aes(x=attendance)) +
  geom_histogram(bins=10, color="black", fill="lightblue")

ggplot(student_data, aes(x=attendance, y=grade)) +
  geom_point(color="blue", size=3)

cor(student_data$grade, student_data$attendance)