library(readxl)
library(ggplot2)
roh <- read_excel("data/ROH.xlsx")
ggplot(roh,aes(Group,ROH))+geom_boxplot(aes(fill=Group),notch = F)+theme_bw()+scale_fill_manual(values = custom_colors)
