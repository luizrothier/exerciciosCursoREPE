

dados_median_sem_na <- dados_recentes %>% 
  group_by(
    region
  ) %>% 
  summarise(
    across(
      .cols = where(is.numeric) & !where(is.integer),
      .fns = ~median(x = .x, na.rm = TRUE )
    )
  )
