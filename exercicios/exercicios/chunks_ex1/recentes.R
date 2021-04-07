

dados_recentes <- dados %>% 
  filter(
    ano == max(ano)
  )