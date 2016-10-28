#load require libraries
library(reshape2) # For resahping the data
library(dplyr) # For data preperation
library(e1071) # Skewness and Kurtosis
library(car) # For the Levenes test
library(ggplot2) # For nice plotting

setwd("C:/Users/Analyst/Documents/GitHub/iov1/iov1/Class 2 HW")
Football <- read.csv(file = "Football_.csv")

#descriptive summary

Football.desc <- Football %>%
  summarise(
    count = n(),
    sum = sum(Revenue, na.rm = TRUE),
    min = min(Revenue, na.rm = TRUE),
    max = max(Revenue, na.rm = TRUE),
    mean = mean(Revenue, na.rm = TRUE),
    median = median(Revenue, na.rm = TRUE),
    range = max - min,
    q1 = as.numeric(quantile(Revenue, na.rm = TRUE)[2]),
    q3 = as.numeric(quantile(Revenue, na.rm = TRUE)[4]),
    iqr = q3 - q1,
    sd = sd(Revenue, na.rm = TRUE),
    var = var(Revenue, na.rm = TRUE)
    shapiro = shapiro.test(Revenue)
  )
print
print(Football.desc)

# ANOVA
## Calculate ANOVA results
fit <- lm(data = Football, Revenue~Value )
Football.aov <- aov(fit)
Football.aov.summary <- summary(Football.aov)
## Print results
print(Football.aov.summary)

plot(Football$Value )
hist(Football$Value )

## Homogenity of variance
Football.levene <- leveneTest(fit)
## Print results
print(Football.levene)

# Get values for ploting
## Get the degrees of freedom
df <- anova(fit)[, "Df"]
names(df) <- c("between", "within")

# Set alpha error
alpha <- 0.05


# Get values for ploting
## Get the degrees of freedom
df <- anova(fit)[, "Df"]
names(df) <- c("between", "within")

# Set alpha error
alpha <- 0.05

## Get the f values
Football.f.crit <- qf(alpha, df["between"], df["within"], lower.tail = FALSE)
Football.f.value <- Football.aov.summary[[1]]$F[1]

print(Football.f.value)

qqp <- ggplot(Football) +
  stat_qq(aes(sample = Revenue, colour = factor(Value))) +
  guides(col = guide_legend(title = "Cylinder"))

print(qqp)