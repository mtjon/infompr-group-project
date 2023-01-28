bertscores <- read.csv("bertscores.csv", header = F)

qqnorm(bertscores$V1)
qqline(bertscores$V1)

qqnorm(bertscores$V2)
qqline(bertscores$V2)

qqnorm(bertscores$V3)
qqline(bertscores$V3)
