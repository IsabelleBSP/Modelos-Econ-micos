##################
# Exercício C1
##################

install.packages("wooldridge")
library(wooldridge)

dados_c1 <- wage1

?wage1

##########
# Parte (i)
##########

# Média do nível de escolaridade
mean(dados_c1$educ, na.rm = TRUE) 

# Maior valor de anos de educação
max(dados_c1$educ, na.rm = TRUE)

# Menor valor de anos de educação
min(dados_c1$educ, na.rm = TRUE)

###########
# Parte (ii)
###########

# Média do salário-hora
mean(dados_c1$wage, na.rm = TRUE) 

###########
# Parte (v)
###########

# Quantidade de mulheres 
table(dados_c1$female)

###########################################################

######################
# Exercício C2
######################

install.packages("wooldridge")
library(wooldridge)

dados_c2 <- bwght

?bwght

############
# Parte (i)
############

# Existem 1388 mulheres na amostra

# As mulheres que fumam
table(dados_c2$cigs)

1388 - 1176

############
# Parte (ii)
############

mean(dados_c2$cigs, na.rm = TRUE)

##############
# Parte (iii)
##############

library(dplyr)

# Só com as pessoas que fumam
dados_fumam <- dados_c2 %>% filter(cigs > 0)

# Média de cigarros consumidos por dia durante a gravidez
mean(dados_fumam$cigs, na.rm = TRUE)

############
# Parte (v)
############

# Média da renda familiar
mean(dados_c2$faminc, na.rm = TRUE) 

29.02666 * 5.65

# Desvio padrão da renda familiar
sd(dados_c2$faminc, na.rm = TRUE)  

18.73928 * 5.65

#########################################################

###########################
# Exercício C5
###########################

install.packages("wooldridge")
library(wooldridge)

dados_c5 <- fertil2

?fertil2

############
# Parte (i)
############

# Menor valor da variável children
min(dados_c5$children, na.rm = TRUE)

# Maior valor da variável children
max(dados_c5$children, na.rm = TRUE)

# Média da variável children
mean(dados_c5$children, na.rm = TRUE)

#############
# Parte (ii)
#############

# Porcentagem de mulheres que têm eletricidade em casa
table(dados_c5$electric)/nrow(dados_c5)*100

##############
# Parte (iii)
##############

install.packages("dplyr")
library(dplyr)

# Média de children para aquelas sem eletricidade
children_sem_eletricidade <- dados_c5 %>% filter(electric == "0")
mean(children_sem_eletricidade$children, na.rm = TRUE)

# Média de children para aquelas que têm eletricidade
children_com_eletricidade <- dados_c5 %>% filter(electric == "1")
mean(children_com_eletricidade$children, na.rm = TRUE)

######################
# Exercício C6
######################
install.packages("wooldridge")
library(wooldridge)

dados_c6 <- countymurders

?countymurders

install.packages("dplyr")
library(dplyr)

dados_c6_1996 <- dados_c6 %>% filter(year == "1996")

############
# Parte (i)
############

# Condados listados no conjunto de dados
dados_c6_1996 <- dados_c6 %>% filter(year == "1996")

# Condados com zero assassinatos
zero_assassinatos <- dados_c6_1996 %>% filter(murders == 0)

# Porcentagem de condados com zero execuções
zero_execuções <- dados_c6_1996 %>% filter(execs == 0)
2197 - 2166

table(dados_c6_1996$execs)/nrow(dados_c6_1996)*100

#############
# Parte (ii)
#############

# Maior número de assassinatos
max(dados_c6_1996$murders, na.rm = TRUE)

# Maior número de execuções
max(dados_c6_1996$execs, na.rm = TRUE)

# Média das execuções
mean(dados_c6_1996$execs, na.rm = TRUE)

##############
# Parte (iii)
##############

# Coeficiente de correlação
cor(countymurders$murders, countymurders$execs)


####################
# Exercício C7
####################
install.packages("wooldridge")
library(wooldridge)

dados_c7 <- alcohol

?alcohol

############
# Parte (i)
############

# Porcentagem de homens com abuso de álcool
table(dados_c7$abuse)/nrow(dados_c7)*100

# Taxa de emprego
table(dados_c7$employ)/nrow(dados_c7)*100

#############
# Parte (ii)
#############

# Homens que abusam de álcool
abusam_de_álcool <- dados_c7 %>% filter(abuse == 1) 

# Taxa de emprego dos que abusam de álcool
table(abusam_de_álcool$employ)/nrow(abusam_de_álcool)*100

##############
# Parte (iii)
##############

# Taxa de emprego dos homens que não abusam de álcool
não_abusam_de_álcool <- dados_c7 %>% filter(abuse == 0) 

table(não_abusam_de_álcool$employ)/nrow(não_abusam_de_álcool)*100
