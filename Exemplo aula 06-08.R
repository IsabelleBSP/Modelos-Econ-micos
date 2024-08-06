# (# é comentário)
# (<- é recebe)
# (CRTL+Enter é para rodar o programa)
# (O R não usa barra/, mas sim o contrabarra\)
# ($ é para ver dado especifico, coluna específica da tabela)
# (função nrow conta o número de linhas)
# (Função table é para acessar tabela)


# Importação dos dados (# é comentário)

install.packages("readr") # Instala pacote
library(readr)            # Carrega pacote

# Carrega dados
dados <- read.csv("C:/Users/20231enpro0399/Downloads/olimpiadas.csv")


########################
# Tabelas de frequência
########################

# Tabelas simples

table(dados$Sex) # valores absolutos

table(dados$Sex)/nrow(dados) # valores relativos
  
# Tabela de dupla entrada

table(dados$Sex, dados$NOC)
  
# Dados somente do Brasil
  
install.packages("dplyr")
library(dplyr)

dados_brasil <- dados %>% filter(NOC == "BRA")

table(dados_brasil$Sex)

########################
# Gráficos
########################

install.packages("esquisse")
library(esquisse)


library(ggplot2)

ggplot(dados) +
 aes(x = Sex) +
 geom_bar(fill = "#112446") +
 theme_minimal()


###################
# Estatíticas descritivas
###################

min(dados$Age, na.rm = TRUE) # Mínimo

max(dados$Age, na.rm = TRUE) # Máximo

mean(dados$Age, na.rm = TRUE) # Média

sd(dados$Age, na.rm = TRUE) # Desvio-padrão

esquisser(dados)
  
dados_F <- dados %>% filter(Sex == "F")  

mean(dados_F$Weight, na.rm = TRUE)
  
dados_M <- dados %>% filter(Sex == "M")  

mean(dados_M$Weight, na.rm = TRUE)


dados %>% group_by(Sex) %>% summarise(media = mean(Weight, na.rm = TRUE))

  
  
  