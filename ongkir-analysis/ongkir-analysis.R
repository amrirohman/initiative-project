install.packages("tidyverse")
install.packages("janitor")
getwd()

library(tidyverse)
library(janitor)

#19 Feb 2020
df <- readxl::read_xlsx('data-19022020.xlsx')
glimpse(df)

df_clean <- 
  clean_names(df) %>%
  select(c(-1,-9)) %>%
  mutate(ekspedisi = tolower(ekepedisi))
df_clean

df_clean %>%
  group_by(ekspedisi) %>%
  summarise(biaya_ongkir = sum(tarif_asli)) %>%
  arrange(desc(biaya_ongkir)) %>%
  head(n=5)

unique(df_clean$ekspedisi)
  
x = ("xsdjabar")
str_remove_all(x, "[jabar]")

tolower('AasasA')