

dados_delta <- dados %>% 
  select(
    country, ano,  happiness_score    
  ) %>% 
  arrange(
   ano 
  ) %>% 
  group_by(
    country
  ) %>% 
  mutate(
    delta = happiness_score - lag(happiness_score)
  ) %>% 
  ungroup()
