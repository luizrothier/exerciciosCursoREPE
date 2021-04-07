
dados_regressao_normalizados <- dados_regressao %>% 
  group_by(year) %>% 
  mutate(
    across(
      .cols = where(is.numeric),
      .fns = ~(.x - median(.x, na.rm = TRUE))/mad(.x,na.rm = TRUE )
    )
  )

