
library(tidyverse)
library(dslabs)

filter(complete,complete$Name.of.State...UT=="Telengana") %>% 
  ggplot(aes(Date,Total.Confirmed.cases))+geom_point()


