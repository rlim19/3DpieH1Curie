# Create 3D pie chart for color chromatin in human

color_states <- read.table("data/states_dom_hESC.txt.gz", header=T)
head(color_states)
coverage_color <- tapply(INDEX=color_states$tag, 
                         X=color_states$end-color_states$start,
                         sum)
percent_coverage_color <- coverage_color/sum(as.numeric(coverage_color))*100
percent_coverage_color
library(plotrix)
color_states =c("black", "deeppink2", "purple4", "red", "gold2")
pie3D(percent_coverage_color, explode=0.1,
      col = color_states)
