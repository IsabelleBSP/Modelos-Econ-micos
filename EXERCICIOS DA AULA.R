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

#############################################################################################

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

######################################################################################

###########################
# Exercício C5
###########################

install.packages("wooldridge")
library(wooldridge)

dados_c5 <- fertil2

?fertil2