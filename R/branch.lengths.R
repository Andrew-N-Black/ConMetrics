library(readxl)
library(ggplot2)

len <- read_excel("length.xlsx")
ggplot(len,aes(Group,LEN))+geom_boxplot(aes(fill=Group),notch = F)+theme_bw()+scale_fill_manual(values = custom_colors) +labs(x = "", y = "Branch Length")+ theme(plot.title = element_text(size = 16, face = "bold"),axis.text = element_text(size = 12),axis.title = element_text(size = 14, face = "bold"),legend.title = element_blank(),legend.position = "none")
