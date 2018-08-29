CDR3_PTX = read.csv('PostTreatment.csv')
draw.pairwise.venn(area1 = nrow(subset(CDR3_PTX, PB_ACM029 > 0)), area2 = nrow(subset(CDR3_PTX, PB_ACM038 > 0)), cross.area = nrow(subset(CDR3_PTX, PB_ACM029 & PB_ACM038 > 0)), category = c("PB_ACM029_CDR3", "PB_ACM038_CDR3"),lty = rep("blank", 2), fill = c("red", "blue"), alpha = rep(0.5, 2), cat.pos = c(0, 0), cat.dist = rep(0.025, 2))
                   
