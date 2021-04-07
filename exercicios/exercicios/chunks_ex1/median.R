

dados_median <- dados_recentes %>% 
  group_by(
    region
  ) %>% 
  summarise(
    across(
      .cols = where(is.numeric) & !where(is.integer),
      .fns = median
    )
  ) %>% 
  ungroup()
