# Date: 2022-01-17
# Aim: Order speeches by order of last spoke

# Link for data to be copy pasted as reuires login

# https://toastmasterclub.org/schedule_speeches.php

# hide goals and notes

speech <-read.csv("speeches.csv")

# FIND NO RECORD as first 

speech[speech$LastSpoke=="No record",]
# order by  then?

# remove those from list as assumed top

speech1<-speech[-c(23), ]

speech1$LastSpoke <- as.numeric(speech1$LastSpoke)
typeof(speech1$LastSpoke)

# sort by people when they last spoke
write.csv(arrange(speech1, LastSpoke ), "chasespeeches.csv", row.names = FALSE)