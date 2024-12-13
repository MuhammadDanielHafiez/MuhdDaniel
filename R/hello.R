missing_value <- function(dataset) {
  for (col_name in colnames(dataset)) {
    if (is.numeric(dataset[[col_name]])) {
      col_median <- median(dataset[[col_name]], na.rm = TRUE)
      dataset[[col_name]][is.na(dataset[[col_name]])] <- col_median
    }
  }
  return(dataset)
}

