

dados_reg_continente_executado <- dados_reg_continente %>% 
  nest(
    dados = -region
  ) %>% 
  rowwise() %>% 
  mutate(
    modelo = list(lm(
          formula = happiness ~     
            gdp +
            social +
            health +
            freedom +
            generosity +
            corruption,
          data = dados
        )  
    )
  ) %>% 
  mutate(
    coefs = list(tidy(modelo))
  ) %>% 
  ungroup() %>% 
  select(
    -c(dados, modelo)
  ) %>% 
  unnest(
    coefs
  ) %>% 
  select(
    region,
    estimate,
    term
  )

