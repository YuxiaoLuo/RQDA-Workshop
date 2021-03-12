###########################################
# Intro to Qualitative data and text analysis
# 10/07/2020
#


setwd("D:/RQDA/Data")

library(tidyverse)
library(RQDA)
library(tm)
library(wordcloud)
library(igraph)
library(topicmodels)
library(ggplot2)
library(SnowballC)

RQDA()

openProject("stakeholders.rqda")

interviews <- data.frame(name = RQDAQuery("SELECT name FROM source"),
                         text = RQDAQuery("SELECT file FROM source"))

RQDAQuery("SELECT name FROM source")
RQDAQuery("SELECT file FROM source")

interviews <- VCorpus(VectorSource(interviews$file))

interviews <- tm_map(interviews, removeNumbers)
interviews <- tm_map(interviews, removePunctuation) 
interviews <- tm_map(interviews, content_transformer(tolower))
interviews <- tm_map(interviews, removeWords, stopwords("english")) # http://xpo6.com/list-of-english-stop-words/
interviews <- tm_map(interviews, stripWhitespace)
interviews <- tm_map(interviews, removeWords, c("interviewer", "interviewee"))

print(interviews[[1]]$content) 

# Word cloud 
set.seed(2020)
wordcloud(interviews, min.freq = 10, max.words = 50, rot.per=0.35, 
          colors = brewer.pal(8, "Blues")[-1:-5])
dev.off()

dtm <- DocumentTermMatrix(interviews)
dtm <- removeSparseTerms(dtm, 0.99)
ldaOut <- LDA(dtm, k = 4)
terms(ldaOut,15)


#############################
# Qulitative data in RQDA

## Load and transform data
codes <- getCodingTable()
codings <- getCodingTable()[,4:5]
categories <- RQDAQuery("SELECT filecat.name AS category, source.name AS filename 
                         FROM treefile, filecat, source 
                         WHERE treefile.catid=filecat.catid AND treefile.fid=source.id AND treefile.status=1")
codings <- merge(codings, categories, all.y = TRUE)
head(codings)

## Open coding
reorder_size <- function(x) {
  factor(x, levels = names(sort(table(x))))
}
ggplot(codings, aes(reorder_size(codename), fill=category)) + geom_bar(stat="count") + 
  facet_grid(~filename) + coord_flip() + 
  theme(legend.position="bottom", legend.title=element_blank()) + 
  ylab("Code frequency in interviews") + xlab("Code")

# see table structure in RQDA
?RQDATables

edges <- RQDAQuery("SELECT codecat.name, freecode.name FROM codecat, freecode, treecode WHERE codecat.catid=treecode.catid AND freecode.id=treecode.cid")

g <- graph_from_edgelist(as.matrix(edges), directed = FALSE) %>%
  simplify()
V(g)$name <- gsub(" ", "\n", V(g)$name)

c <- spinglass.community(g)
par(mar=rep(0,4))
set.seed(666)
plot(c, g, 
     vertex.size = 10,
     vertex.color = NA,
     vertex.frame.color = NA,
     layout = layout.drl)

dev.off()





