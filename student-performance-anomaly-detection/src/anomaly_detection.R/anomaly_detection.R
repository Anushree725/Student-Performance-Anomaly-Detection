library(isotree)
library(ggplot2)

set.seed(123)

isotree_model <- isolation.forest(
  student_data[, c("grade", "attendance")],
  ntrees = 100,
  sample_size = nrow(student_data)
)

anomaly_score <- predict(isotree_model, student_data[, c("grade", "attendance")])
threshold <- quantile(anomaly_score, 0.95)

anomalies <- student_data[anomaly_score > threshold, ]

ggplot(student_data, aes(x=grade, y=attendance)) +
  geom_point(aes(color = ifelse(
    rownames(student_data) %in% rownames(anomalies),
    "Anomaly", "Normal"))) +
  scale_color_manual(values = c("blue", "red")) +
  labs(title = "Anomaly Detection",
       x = "Grade",
       y = "Attendance")