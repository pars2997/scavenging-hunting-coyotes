setwd("C:/Users/A02323599/Box Sync/CoyoteForagingStudy/RawData")
dat<-read.csv("CoyoteTimeline2.csv")
dat$start_date<-as.Date(dat$start_date,format="%m/%d/%Y")
dat$end_date<-as.Date(dat$end_date,format="%m/%d/%Y")
spots <- read.csv('CoyoteSpot.csv')
spots$spot_date<-as.Date(spots$spot_date,format="%m/%d/%Y")
dat$activity <- ordered(dat$activity,levels = c("Non-feeding focal sampling","Scavenging focal sampling",
                                                "Hunting focal sampling","Novel object",
                                                "Puzzle box","Conspecific"))

# 
# install.packages("remotes")
# library(remotes)
# remotes::install_github("giocomai/ganttrify")
library(ganttrify)
ganttrify(project = dat,
          spots = spots,
          by_date = TRUE,
          exact_date = TRUE,
          size_text_relative = 1.4,
          mark_years = FALSE,
          month_number = FALSE,
          month_date_label = TRUE,
          x_axis_position = "bottom",
          hide_wp = TRUE,
          colour_palette = c("gray50"))

pdf(file = "Timeline.pdf",width = 8, height = 4)

tiff(file = "timeline2.tiff", res = 300, units = "in", width = 12, height = 6, compression = "lzw")
dev.off()
