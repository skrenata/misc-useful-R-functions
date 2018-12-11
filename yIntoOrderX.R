yIntoOrderX <- function(x,y) {
	#########################################################
	## function to put vector y in the same order as vector x
	## for example,
	## x <- c("b","c","a","d")
	## y <- c("DD","AA","BB","CC")
	## => yIntoOrderX(x, y) == c("BB","CC","AA","DD")
	#########################################################
	
	rankOfX <- rank(x, ties.method = "last")
	sortedY <- sort(y)
	reorderedY <- sortedY[rankOfX]
	
	return(reorderedY)
}

#################### alternative ##########################
# yIntoOrderX <- function(x,y) {
# 	#######################################################
#   ## function to get in which order y must be put to be
#   ## in the same order as vector x
# 	## for example,
# 	## x <- c("b","c","a","d")
# 	## y <- c("D","A","B","C")
# 	## => yIntoOrderX(x, y) == c(3, 4, 2, 1)
#   ## => y[yIntoOrderX(x, y)] == c("BB","CC","AA","DD")
#   #######################################################
#   
# 	rankOfX <- rank(x, ties.method = "last")
# 	orderOfY <- order(y)
# 	reorderY <- orderOfY[rankOfX]
# 	
# 	return(reorderY)
# }
