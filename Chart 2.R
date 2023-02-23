#Chart 2

library(ggplot2)
library(dplyr)

three_materialtype_checkout <- read.csv("~/Desktop/2017-2023-10-Checkouts-SPL-Data.csv")

three_materialtype <- three_materialtype_checkout %>%
  filter(MaterialType %in% c("MOVIE", "BOOK", "AUDIOBOOK"))

ggplot(data = three_materialtype) +
  geom_col(aes(x = CheckoutYear,
                y = Checkouts,
                fill = MaterialType)) +
  labs(
    title = "The Changes Of Checkouts In Three MaterialType From 2017 To 2023",
    x = "CheckoutYear",
    y = "The Number Of Checkouts"
  )