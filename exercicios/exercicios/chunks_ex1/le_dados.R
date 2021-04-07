
dados <- list.files("dados_ex1") %>% 
  enframe(
    value = "arquivo_ano"
  ) %>% 
  mutate(
    conteudo =  map(
      .x = str_glue("dados_ex1/{arquivo_ano}"), .f = le_arquivo_hapiness
    )
  ) %>% 
  unnest(
    conteudo
  ) %>% 
  mutate(
    ano = str_remove(arquivo_ano, "\\.csv") %>%  as.integer()
  )



