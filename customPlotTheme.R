customPlotTheme <- function(titleAlign=0.5){
	custhm <- theme_bw() + 
		theme(axis.title.x = element_text(color="black", size=rel(1.5)),
					axis.text.x  = element_text(color="black", size=rel(1.5), 
												margin=margin(t = 10, b = 10)),
					axis.title.y = element_text(color="black", size=rel(1.5)),
					axis.text.y  = element_text(color="black", size=rel(1.5), 
												margin=margin(l = 10, r = 10)),
					legend.text = element_text(color="black", size=rel(1.2)),
					legend.position = "top",
					plot.title = element_text(size=rel(1.7), hjust=titleAlign, 
											face="plain"),
					plot.subtitle = element_text(size=rel(1.1), 
											hjust=titleAlign, face="plain"))
	return(custhm)
}