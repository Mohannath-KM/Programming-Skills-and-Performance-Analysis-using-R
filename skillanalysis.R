# Load required packages
library(ggplot2)
library(dplyr)

# Read data from CSV file

data <- read.csv("D:\\DOCS\\CSE\\SEM 6\\R program\\R PROJECT\\student_data.csv")
data
# Data analysis
summary(data)

# Calculate correlation between programming skills and assignment performance
correlation <- cor(data$ProgrammingSkills, data$Assignment1)

# Calculate average assignment scores
avg_assignment1 <- mean(data$Assignment1)
avg_assignment2 <- mean(data$Assignment2)

# Generate a scatter plot of programming skills vs assignment performance
ggplot(data, aes(x = ProgrammingSkills, y = Assignment1)) +
  geom_point() +
  labs(x = "Programming Skills", y = "Assignment 1 Score", title = "Programming Skills vs Assignment 1 Performance")

# Generate a bar plot of average assignment scores
assignment_avg <- data.frame(Assignment = c("Assignment 1", "Assignment 2"),
                             AverageScore = c(avg_assignment1, avg_assignment2))
ggplot(assignment_avg, aes(x = Assignment, y = AverageScore)) +
  geom_bar(stat = "identity") +
  labs(x = "Assignment", y = "Average Score", title = "Average Assignment Scores")


