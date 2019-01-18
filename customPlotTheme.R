## you must have already called ggplot2 for this to work
library(ggplot2)
customPlotTheme <- function(titleAlign=0.5,
			    legPos="top",
			    legTitle=FALSE,
			    baseTheme=theme_bw(),
			    aspRatio=1){
	## custom ggplot2 theme that I like
	## call customPlotTheme() to have all default values:
	## - centralised title
	## - legend on top, no title displayed
	## - base b/w theme
	## - aspect ratio 1:1
	## if you want a custom legend title, provide a character entry
	custhm <- baseTheme + 
		theme(axis.title.x = element_text(color="black", size=rel(1.5)),
			axis.text.x  = element_text(color="black", size=rel(1.5), 
										margin=margin(t = 10, b = 10)),
			axis.title.y = element_text(color="black", size=rel(1.5)),
			axis.text.y  = element_text(color="black", size=rel(1.5), 
										margin=margin(l = 10, r = 10)),
			legend.text = element_text(color="black", size=rel(1.2)),
			legend.position = legPos,
			plot.title = element_text(size=rel(1.7), hjust=titleAlign, 
										face="plain"),
			plot.subtitle = element_text(size=rel(1.1), 
								hjust = titleAlign, face = "plain"),
			aspect.ratio = aspRatio)
	if(is.character(legTitle)){
		custhm <- custhm + theme(legend.title=element_text(legTitle))
	} else {
		if(!legTitle){
			custhm <- custhm + theme(legend.title=element_blank())
		}
	}
	return(custhm)
}
