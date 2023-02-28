# IMPORTING LIBRARIES
library(rvest)
library(dplyr)

# SCRAPPING WEBSITE
link <-"https://www.celebritynetworth.com/list/top-50-richest-billionaires/"

# ALLOWABILITY
#path = paths_allowed(link)

# HTML ELEMENTS FROM WEBSITE
web <- read_html(link)

# SEGREGATING NAME
rank <- web %>% html_nodes(".order") %>% html_text()

# VIEWING NAME LIST
View(rank)

name <- web %>% html_nodes(".name") %>% html_text()

# VIEWING YEAR LIST
View(name)

# SEGREGATING RATEING
billion <- web %>% html_nodes(".net_worth") %>% html_text()

# VIEWING RATING LIST
View(billion)

richestman <- data.frame(rank,name,billion)

View(richestman)

write.csv(richestman,"my richestman data.csv")
