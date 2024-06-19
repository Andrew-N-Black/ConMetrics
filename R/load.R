library(readxl)
library(ggplot2)

LOAD <- read_excel("data/load.xlsx")
ggplot(LOAD,aes(GROUP,BURDEN))+geom_boxplot(aes(fill=GROUP),notch = F)+theme_bw()+scale_fill_manual(values = custom_colors) +labs(x = "", y = "Load")+ theme( plot.title = element_text(size = 16, face = "bold"),axis.text = element_text(size = 12),axis.title = element_text(size = 14, face = "bold"),legend.title = element_blank(),legend.position = "none" )
