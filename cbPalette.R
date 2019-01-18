cbPalette <- function(palt=1, 
					  reverse=FALSE,
					  short=FALSE){
	## 1 or any other thing == rainbow (12)
	## 2 == dark red to dark blue (12)
	## 3 == dark brown to dark green (12)
	## 4 == purple / pink to dark green (12)
	## 5 == blue to yellow (9)
	## 6 == purple to yellow (9)
	plotPalette <- c("#b2182b", "#67001f", "#D55E00", "#E69F00", 
					"#F0E442", "#7fbc41", "#009E73", "#56B4E9", 
					"#0072B2", "#542788", "#CC79A7", "#777777")		
	if(palt==2) {
		plotPalette <- c("#67001f", "#a50026", "#d73027", "#f46d43", 
						"#fdae61", "#fddbc7", "#eeee00", "#d1e5f0", 
						"#92c5de", "#4393c3", "#2166ac", "#313695")		
	}
	if(palt==3) {
		plotPalette <- c("#543005", "#8c510a", "#bf812d", "#dfc27d",
					"#fee090", "#eedd00", "#d9f0a3", "#c7eae5", 
					"#80cdc1", "#35978f", "#01665e", "#003c30")		
	}
	if(palt==4){
		plotPalette <- c("#762a83", "#c51b7d", "#9970ab", "#de77ae", 
						 "#c2a5cf", "#f1b6da", "#a6dba0", "#5aae61", 
						 "#7fbc41", "#1b7837", "#4d9221", "#276419")
	}
	if(palt==5){
		plotPalette <- rev(c("#eeee22", "#ede8b1", "#c7e9b4", 
						 "#7fcdbb", "#41b6c4", "#1d91c0", 
						 "#225ea8", "#253494", "#081d58"))
	}
	if(palt==6){
		plotPalette <- c("#49006a", "#7a0177", "#ae017e", 
						 "#dd3497", "#ce1256", "#e31a1c", 
						 "#fd8d3c", "#fed976", "#eeee22")
	}
	if(short){
		if(palt %in% c(5, 6)){
			plotPalette <- plotPalette[2*(1:5) - 1]
		} else{
			plotPalette <- plotPalette[2*(1:6)]	
		}
	}
	if(reverse){
		plotPalette <- rev(plotPalette)
	}
	return(plotPalette)
}