library(tidyverse)


tv_hours_tabulation <- gss_cat %>% 
  filter(age < 30) %>% 
  group_by(marital) %>% 
  summarise(mean_tv_hours = mean(tvhours, na.rm = T))
#divorced people watch more Tv than married people

library(here)

write_csv(tv_hours_tabulation, here("TV_hours_by_Marital.csv"))

