# Create 3D pie chart for color chromatin in human
H1color_states <- read.table("data/states_dom_hESC.txt.gz", header=T)
head(H1color_states)
coverage_color <- tapply(INDEX=H1color_states$tag, 
                         X=H1color_states$end-H1color_states$start,
                         sum)
percent_coverage_color <- coverage_color/sum(as.numeric(coverage_color))*100
percent_coverage_color

# reorder the color states
percent_coverage_color <- percent_coverage_color[c(1,3,5,2,4)]
percent_coverage_color
library(plotrix)
color_states =c("black", "purple4", "gold2", "deeppink2","red")
pie3D(percent_coverage_color,col = color_states)
