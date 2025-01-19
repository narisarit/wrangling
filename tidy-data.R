# tidy format
# 1 row = 1 observation
# 1 column = 1 variable

# wide format
# 1 row = several observations
# one of the variables = stored in the header

pivot_longer(df, cols = , names_to = , values_to = )
# transform col names to characters so we do 
mutate(newcolname = as.numeric(newcolname))
#or
pivot_longer(df, cols = , names_to = "newcolname", values_to = , names_transform = list(newcolname=as.numeric))

pivot_wider(df, names_from = , values_from = ) #sometimes useful intermediate step

separate(data, col, into, sep = "[^[:alnum:]]+", remove = TRUE, convert = FALSE, extra = "warn", fill = "warn")

unite(data, col, ..., sep = "_", remove = TRUE, na.rm = FALSE)