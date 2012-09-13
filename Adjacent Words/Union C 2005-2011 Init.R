
## Run Properties - dependent on the source
base.dir<-"/home/arc1/R Projects/Text Mining Weak Signals"
source.dir<-paste(base.dir,"Source Data",sep="/")
set.name<-"Union C 2006 to 2011"
output.dir<-paste("/home/arc1/R Projects/Text Mining Weak Signals Output/Adjacent Words",set.name,sep="/")
#brew.dir<-paste(base.dir,"AdjacentWords",sep="/")

dir.create(output.dir, showWarnings=TRUE)
setwd(output.dir)
# sets.csv <- c("MB/MB Blogs 20090101-20100101 with metrics.csv","MB/MB Blogs 20100101-20120630 with metrics.csv")
#these are combined into one
sets.csv <- c("ICALT Abstracts 2005-2011 with metrics.csv",
              "ECTEL Abstracts 2006-2011 with metrics.csv",
              "ICWL Abstracts 2005-2011 with metrics.csv",
              "ICHL Abstracts 2008-2011 with metrics.csv",
              "CAL Abstracts 2007-2011 with metrics.csv")

title<-"Conference Proceedings from ICALT, ECTEL, CAL, ICHL and ICWL"

data.type<-"a" #a = conference abstracts, b = blogs

#whether to split the dataset by year and create separate plots for each
split.years=TRUE

# allow for multiple words to be the "word in focus", around which the previous/following words are counted
focus.words=c("standards")
focus.placeholder<-"standards" #used as the label in the visualistion to represent the focus word(s)

#the quantile to be applied to adjacent word frequency when visualising (only cases above the cut appear)
cut.quantile<-0.95
cut.quantile.split<-0.8 #used for a split-off year. should be smaller than cut.quantile otherwise they are sparse

source(paste(base.dir,"Adjacent Words/AdjacentWords.R", sep="/"))