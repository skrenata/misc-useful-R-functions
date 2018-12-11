myStringSplit <- function(x,
			  pat,
			  pos){
	############################################################################
	## custom function to split string at a particular pattern and return
	## a specific position before / after that pattern
	############################################################################
	## input:
	## x -> character array
	## pat -> pattern at which split has to happen
	## pos -> which position to return (1 == before pat, 2 == after pat)
	############################################################################
	## example:
	## myStringSplit(x="test_sample_string", pat="_", pos=1) == "test"
	## myStringSplit(x="test_sample_string", pat="_", pos=2) == "sample"
	## myStringSplit(x="test_sample_string", pat="_", pos=3) == "string"
	############################################################################
	
	originalSplit <- strsplit(x, split=pat)
	customSplit <- array("", length(x))
	for(j in 1:length(x)){
		customSplit[j] <- originalSplit[[j]][pos]
	}
	return(customSplit)
}
