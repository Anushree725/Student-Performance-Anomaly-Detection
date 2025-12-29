library(ggplot2)

summary(student_data)

ggplot(student_data, aes(x=grade)) +
  geom_histogram(bins=10, color="black", fill="lightblue")

ggplot(student_data, aes(x=attendance)) +
  geom_histogram(bins=10, color="black", fill="lightblue")

ggplot(student_data, aes(x=attendance, y=grade)) +
  geom_point(color="blue", size=3)

cor(student_data$grade, student_data$attendance)