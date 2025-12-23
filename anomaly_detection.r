 Student Performance Anomaly Detection

data <- read.csv("data/student_data.csv")
summary(data)

anomalies <- subset(data, Marks < 35 | Marks > 90)
print(anomalies)
