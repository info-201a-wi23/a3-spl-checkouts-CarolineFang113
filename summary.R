library(dplyr)

data_checkouts <- read.csv("~/Desktop/2017-2023-10-Checkouts-SPL-Data.csv")

summary_info <- list()

# What is the average number of checkouts in 2017?
summary_info$average_checkouts_2017 <- data_checkouts %>% group_by(Title) %>% filter(CheckoutYear == '2017') %>% summarize(average = mean(Checkouts))

# What is the average number of checkouts in 2023?
summary_info$average_checkouts_2023 <- data_checkouts %>% group_by(Title) %>% filter(CheckoutYear == '2023') %>% summarize(average = mean(Checkouts))

# What is year with the most checkouts for ebooks?
summary_info$year_most_checkouts_ebooks <- data_checkouts %>% filter(MaterialType == 'EBOOK') %>% filter(Checkouts == max(Checkouts)) %>% select(CheckoutYear)

# What is year with the most checkouts for Books?
summary_info$year_most_checkouts_books <- data_checkouts %>% filter(MaterialType == 'BOOK') %>% filter(Checkouts == max(Checkouts)) %>% select(CheckoutYear)

# What is the year with the most checkouts for a book that I'm interested in?
summary_info$year_most_checkouts_interested <- data_checkouts %>% filter(Title == 'Among Others') %>% filter(Checkouts == max(Checkouts)) %>% select(CheckoutYear)

