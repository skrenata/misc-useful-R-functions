scramble <- function(x, y=NULL){
	##########################################################################
  ## function that will take an array of length n and scramble its entries
	## in such a way that sum(x) remains the same but the values are messed up
  ## example:
  ## scramble(rep(1,9)) == c(1.3, 1.1, 0.8, 1.0, 0.7, 1.0, 0.8, 1.2, 1.1)
  ##
	## OPTIONAL if you'd like specific positions to have the highest scrambled
	## values, specify those in a TRUE/FALSE vector y (of same length as x)
  ##########################################################################
	
	total <- sum(x)
	entries <- length(x)
	output <- array(0,entries)
	
	flag <- TRUE
	cont <- 0
	
	while(flag){
		cont <- cont + 1
		if(cont > entries){
			cont <- 1
		}
		output[cont] <- output[cont] + rbinom(1,1,0.5)
		if(sum(output)/entries >= total){
			flag <- FALSE
		}
	}
	
	output <- output/entries
	
	if(!is.null(y)){
		highest <- order(output, decreasing = TRUE)[1:sum(y)]
		part1 <- output[highest]
		part2 <- output[-highest]
		output[which(y)] <- part1
		output[which(!y)] <- part2
	}
	
	return(output)
}
