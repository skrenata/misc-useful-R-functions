textToChar <- function(...){
    #######################################################
    ## Converts comma-separated text into a character array
    ##
    ## Useful when you need to name / rename lots of things 
    ## and can't be bothered to type quotes around each entry
    ## Example:
    ## textToChar(name1, name2, name_three, name/4) == 
    ##            c("name1", "name2", "name_three", "name/4")
    dots <- substitute(list(...))[-1]
    dots <- sapply(dots, deparse)
    return(dots)
}
