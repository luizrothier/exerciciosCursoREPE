

dados_regressao <- read_excel("dados_regressao/dados_regressao.xlsx") %>% 
  janitor::clean_names() %>% 
  select(
    country_name,
    year,
    happiness = life_ladder,
    gdp =log_gdp_per_capita,
    social = social_support,
    health = healthy_life_expectancy_at_birth,
    freedom = freedom_to_make_life_choices,
    generosity,
    corruption =perceptions_of_corruption
  )
