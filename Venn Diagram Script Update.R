# Load tcR Package
# Load DataSet
# install.packages("VennDiagram") <- Install Venn Diagram if you don't have the package
# library("VennDiagram", lib.loc="/Library/Frameworks/R.framework/Versions/3.5/Resources/library") <- Load the package
PatientPair.shared <- shared.repertoire(DataSetName, .head = 1000, .verbose = F)
SharedCDR3 =as.data.frame(PatientPair.shared)
write.csv(SharedCDR3, 'Filename.csv')

CDR3_ = read.csv('Filename.csv')
draw.pairwise.venn(area1 = nrow(subset(CDR3_ , Column1 > 0)), area2 = nrow(subset(CDR3_, Column2 > 0)), cross.area = nrow(subset(CDR3_, Column1 & Column2 > 0)), category = c("PB_ACM037_CDR3", "PB_ACM037_CDR3"),lty = rep("blank", 2), fill = c("red", "blue"), alpha = rep(0.5, 2), cat.pos = c(0, 0), cat.dist = rep(0.025, 2))
                   
