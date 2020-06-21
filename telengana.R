
library(tidyverse)
library(dslabs)

## daily growth
filter(complete,complete$Name.of.State...UT=="Telengana") %>% 
  ggplot(aes(Date,Total.Confirmed.cases))+geom_point()

## total and avg cases per day
filter(complete,complete$Name.of.State...UT=="Telengana") %>% 
  summarize(sum(New.cases,rm.na=T),mean(New.cases,rm.na=T))

## daily cases
filter(complete,complete$Name.of.State...UT=="Telengana") %>% 
  select(c(Date,New.cases)) %>%
  ggplot(aes(New.cases))+geom_histogram(binwidth = 5)
