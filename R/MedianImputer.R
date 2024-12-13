missing_value <- function(dataset) {
  for (col_name in colnames(dataset)) {
    if (is.numeric(dataset[[col_name]])) {
      col_median <- median(dataset[[col_name]], na.rm = TRUE)
      dataset[[col_name]][is.na(dataset[[col_name]])] <- col_median
    }
  }
  return(dataset)
}

data1 <- data.frame(A = c(1, 2, NA, 4), B = c(NA, 2, 3, NA), C = c("x", "y", "z", "w"))
data2 <- missing_value(data1)
print(data2)


