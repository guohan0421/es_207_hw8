# function 1, in R 14.2.5_6, convert vector to string
vtos <- function(x){
  y <- str_c(x, collapse = "|")
  return(y)
}

# function 2 to group by the o3 based on county names and calculate their annual daily mean
a.d.mean <- function(df){
  colnames(df)[11] <- "County_Name"
  new_df <- group_by(df, County_Name) %>% 
    summarize(a.d.mean = mean(o3,na.rm = TRUE))
}

