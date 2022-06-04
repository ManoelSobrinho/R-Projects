head(brasileirao_serie_a3)

dados = brasileirao_serie_a3

attach(dados)

# Analisando os escanteios dos times em casa


modelom=lm(escanteios_man~ano_campeonato+rodada+publico+publico_max+colocacao_man+colocacao_vis+valor_equipe_titular_man+
             valor_equipe_titular_vis+idade_media_titular_man+idade_media_titular_vis+gols_man+gols_vis+gols_1_tempo_man+
             gols_1_tempo_vis+escanteios_vis+faltas_man+faltas_vis+chutes_bola_parada_man+chutes_bola_parada_vis+
             defesas_man+defesas_vis+impedimentos_man+impedimentos_vis+chutes_man+chutes_vis+chutes_fora_man+
             chutes_fora_vis) 

summary(modelom)



modelom=lm(escanteios_man~ano_campeonato+valor_equipe_titular_man+valor_equipe_titular_vis+gols_man+defesas_vis+
             chutes_man+chutes_fora_man)

summary(modelom)

regressao=step(lm(escanteios_man~ano_campeonato+valor_equipe_titular_man+valor_equipe_titular_vis+gols_man+defesas_vis+
                    chutes_man+chutes_fora_man),direction = 'backward')

# Analisando os escanteios dos times foda de casa

modelom=lm(escanteios_vis~colocacao_man+gols_1_tempo_man+gols_1_tempo_vis+defesas_man+chutes_man+chutes_vis) 

summary(modelom)

regressao=step(lm(escanteios_vis~colocacao_man+gols_1_tempo_man+gols_1_tempo_vis+defesas_man+chutes_man+chutes_vis),
               direction = 'backward')