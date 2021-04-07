dirDeTrabalho <- getwd()
dirDeTrabalho
arquivosDoExercio <- list.files("./exercicios/exercicios/dados_ex1")
arquivosDoExercio

teste <- enframe(arquivosDoExercio, name = "name", value = "value")
teste

resultado <- tibble(arquivo = list.files("./exercicios/exercicios/dados_ex1")) %>%
    #view()
    mutate(arquivo = str_glue("./exercicios/exercicios/dados_ex1/{arquivo}")) %>%
    #view()
    mutate(conteudo = map(arquivo,read_csv)) %>% 
    unnest(conteudo)

# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# plan(multiprocess)
# 
# todos_os_fundos <- tibble(arquivo = list.files("dados/fundos")) %>%
#     mutate(arquivo = str_glue("dados/fundos/{arquivo}")) %>%
#     mutate(conteudo = future_map(arquivo, read_rds , .progress = TRUE)) %>% 
#     unnest(conteudo)
# 
# head(todos_os_fundos)
# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#caminho <- "./exercicios/exercicios/dados_ex1"
#arquivo <- "2015.csv"
caminhoArquivo <- str_glue("./exercicios/exercicios/dados_ex1/2015.csv")
conteudo <- read.csv(caminhoArquivo)
data.frame(conteudo)