library(pacman)
p_load(tidyverse, readxl, dplyr)

### Leitura dos dados
setwd("C:\\Users\\Micro\\Desktop\\TCC1\\Banco de dados")
###

### Descrition
desc <- read_xlsx("Dados_TCC.xlsx", sheet = 2)
pos_sep <- strsplit(as.character(desc$Pos),",")
desc$Pos1 <- sapply(pos_sep, function(x) x[1])
desc$Pos2 <- sapply(pos_sep, function(x) ifelse(length(x) > 1, x[2], NA))
desc <- desc[,-3]

### Attack Table
attack <- read_xlsx("Dados_TCC.xlsx", sheet = 4)
attack <- attack[,-c(1,2,3)] 
attach(attack)
#
col_names <- colnames(attack)
for (i in seq_along(col_names)) {
  new_name <- paste0("A", formatC(i, width = 2, flag = "0"))  
  colnames(attack)[i] <- new_name 
}
#
attack <- attack %>% mutate_at(vars(A01:ncol(attack)), function(x) ifelse(grepl("\\.",x), as.numeric(x), as.integer(x)))
attack <- attack %>% mutate(across(A01:ncol(attack), ~ifelse(is.na(.),0,.)))  
# 

### Passing Table
passing <- read_xlsx("Dados_TCC.xlsx", sheet = 5)
passing <- passing[,-c(1,2,3)] 
#
col_names <- colnames(passing)
for (i in seq_along(col_names)) {
  new_name <- paste0("P", formatC(i, width = 2, flag = "0"))  
  colnames(passing)[i] <- new_name 
}
#
attach(passing)
passing <- passing %>% mutate_at(vars(P01:ncol(passing)), function(x) ifelse(grepl("\\.",x), as.numeric(x), as.integer(x)))
passing <- passing %>% mutate(across(P01:ncol(passing), ~ifelse(is.na(.),0,.)))  


### Pass Type Table
pass_type <- read_xlsx("Dados_TCC.xlsx", sheet = 6)
pass_type <- pass_type[,-c(1,2,3,4,16)] 
#
col_names <- colnames(pass_type)
for (i in seq_along(col_names)) {
  new_name <- paste0("PT", formatC(i, width = 2, flag = "0"))  
  colnames(pass_type)[i] <- new_name 
}
#
attach(pass_type)
pass_type <- pass_type %>% mutate_at(vars(PT01:ncol(pass_type)), function(x) ifelse(grepl("\\.",x), as.numeric(x), as.integer(x)))
pass_type <- pass_type %>% mutate(across(PT01:ncol(pass_type), ~ifelse(is.na(.),0,.)))
#

### Goals and Shot Creation
gsc <- read_xlsx("Dados_TCC.xlsx", sheet = 7)
gsc <- gsc[,-c(1,2,3)] 
#
col_names <- colnames(gsc)
for (i in seq_along(col_names)) {
  new_name <- paste0("GSC", formatC(i, width = 2, flag = "0"))  
  colnames(gsc)[i] <- new_name 
}
#
attach(gsc)
gsc <- gsc %>% mutate_at(vars(GSC01:ncol(gsc)), function(x) ifelse(grepl("\\.",x), as.numeric(x), as.integer(x)))
gsc <- gsc %>% mutate(across(GSC01:ncol(gsc), ~ifelse(is.na(.),0,.)))    
#

### Defensive Actions Table
defense <- read_xlsx("Dados_TCC.xlsx", sheet = 8)
defense <- defense[,-c(1,2,3)]
#
col_names <- colnames(defense)
for (i in seq_along(col_names)) {
  new_name <- paste0("DEF", formatC(i, width = 2, flag = "0"))  
  colnames(defense)[i] <- new_name 
}
#
attach(defense)
defense <- defense %>% mutate_at(vars(DEF01:ncol(defense)), function(x) ifelse(grepl("\\.",x), as.numeric(x), as.integer(x)))
defense <- defense %>% mutate(across(DEF01:ncol(defense), ~ifelse(is.na(.),0,.)))
#

### Possing Table
poss <- read_xlsx("Dados_TCC.xlsx", sheet = 9)
poss <- poss[,-c(1,2,3)]
#
col_names <- colnames(poss)
for (i in seq_along(col_names)) {
  new_name <- paste0("POSS", formatC(i, width = 2, flag = "0"))  
  colnames(poss)[i] <- new_name 
}
#
attach(poss)
poss <- poss %>% mutate_at(vars(POSS01:ncol(poss)), function(x) ifelse(grepl("\\.",x), as.numeric(x), as.integer(x)))
poss <- poss %>% mutate(across(POSS01:ncol(poss), ~ifelse(is.na(.),0,.)))
#

### Miscellaneous Stats Table
misc <- read_xlsx("Dados_TCC.xlsx", sheet = 10)
misc <- misc[,-c(1,2,3)]
#
col_names <- colnames(misc)
for (i in seq_along(col_names)) {
  new_name <- paste0("MISC", formatC(i, width = 2, flag = "0"))  
  colnames(misc)[i] <- new_name 
}
#
attach(misc)
misc <- misc %>% mutate_at(vars(MISC01:ncol(misc)), function(x) ifelse(grepl("\\.",x), as.numeric(x), as.integer(x)))
misc <- misc %>% mutate(across(MISC01:ncol(misc), ~ifelse(is.na(.),0,.)))
#

### Playing Time Table
play_time <- read_xlsx("Dados_TCC.xlsx", sheet = 11)
play_time <- play_time[,-c(1,2,3)]
#
col_names <- colnames(play_time)
for (i in seq_along(col_names)) {
  new_name <- paste0("PL", formatC(i, width = 2, flag = "0"))  
  colnames(play_time)[i] <- new_name 
}
#
attach(play_time)
play_time <- play_time %>% mutate_at(vars(PL01:ncol(play_time)), function(x) ifelse(grepl("\\.",x), as.numeric(x), as.integer(x)))
play_time <- play_time %>% mutate(across(PL01:ncol(play_time), ~ifelse(is.na(.),0,.))) 
#


