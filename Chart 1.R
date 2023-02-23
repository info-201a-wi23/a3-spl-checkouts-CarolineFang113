#Chart 1
library(ggplot2)
library(dplyr)

twobooks_checkout <- read.csv("~/Desktop/2017-2023-10-Checkouts-SPL-Data.csv")

twobooks <- twobooks_checkout %>%
  filter(Title %in% c("Among Others", "24K Magic"))

  ggplot(data = twobooks) +
    geom_line(aes(x = CheckoutYear,
                y = Checkouts,
                color = Title)) +
    labs(
    title = "The Changes Of Checkouts In Two Books From 2017 To 2023",
    x = "CheckoutYear",
    y = "The Number Of Checkouts",
    color = "Book Name"
  )