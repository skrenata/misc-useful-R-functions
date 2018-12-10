textToChar <- function(...){
    ## converts comma-separated text into a character array
    dots <- substitute(list(...))[-1]
    dots <- sapply(dots, deparse)
    return(dots)
}
