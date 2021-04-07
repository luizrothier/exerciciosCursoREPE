dirDeTrabalho <- getwd()
dirDeTrabalho
arquivosDoExercio <- list.files("./exercicios/exercicios/dados_ex1")
arquivosDoExercio

resultado <- arquivosDoExercio %>% enframe(name = arquivosDoExercio) %>% mutate(
    map(
        str_glue(
            unnest(
                str_remove(
                    mutate(
                        as.integer()
                    )
                )
            )
        )
    )
)

resultado