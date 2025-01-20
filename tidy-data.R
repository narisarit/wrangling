# tidy format
# 1 row = 1 observation
# 1 column = 1 variable

# wide format
# 1 row = several observations
# one of the variables = stored in the header

pivot_longer()
# transform col names to characters so we do 
mutate(newcolname = as.numeric(newcolname))


pivot_wider() #sometimes useful intermediate step

separate()

unite()

left_join()
right_join()
inner_join()
full_join()
semi_join()
anti_join()

bind_cols()
bind_rows()

intersect()
union()
setdiff()
setequal()

#web scraping
library(rvest)
html_nodes()
html_node()
html_table()
html_text()
html_form()
set_values()
submit_form()


setNames()
