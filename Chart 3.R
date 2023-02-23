#Chart 3

library(ggplot2)

most_popular_month_checkout <- read.csv("~/Desktop/2017-2023-10-Checkouts-SPL-Data.csv")

ggplot(data = most_popular_month_checkout) +
  geom_col(mapping = aes(x = CheckoutMonth,
               y = Checkouts,
               fill = CheckoutMonth)) +
  labs(
    title = "The Quarter With The Most Number Of Checkouts Between 2017 And 2023",
    x = "CheckoutMonth",
    y = "The Number Of Checkouts"
  )