
install.packages("ggplot2")
library(ggplot2)

virat_data <- read.csv("virat.csv")


ggplot(virat_data, aes(x = Format)) +
  geom_bar()
ggplot(virat_data, aes(x = seq_along(Score), y = Score)) +
  geom_line()
ggplot(subset(virat_data, Format == "ODI"), aes(x = Inn., y = Score)) +
  geom_point()
ggplot(subset(virat_data, Format == "Test"), aes(x = Score)) +
  geom_histogram()
ggplot(subset(virat_data, Format == "ODI"), aes(x = Out, y = Score)) +
  geom_boxplot()
ggplot(subset(virat_data, Format == "Test"), aes(x = Inn., y = Score)) +
  geom_violin()
ggplot(virat_data, aes(x = Result, y = Score)) +
  geom_tile()


