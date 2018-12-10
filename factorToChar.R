factorToChar <- function(dataframe){
   #######################################################
   ## Converts all factor columns on a dataframe into char
   ## Useful when you need to swap between factor and char 
   ## after importing a dataset, or to avoid weird errors 
   ## when comparing factor / character arrays.
   ## If you're importing a dataset, and want to force R 
   ## not to convert char into factors, use 
   ## `read.table(..., as.is = TRUE)`
   #######################################################
   
   ## find which columns are factors
   f <- sapply(dataframe, is.factor)
   ## convert those columns to characters
   dataframe[f] <- lapply(dataframe[f], as.character)
   return(dataframe)
}
