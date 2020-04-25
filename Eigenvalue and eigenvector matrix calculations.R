library(dplyr)
library(tidyr)
library(readxl)
library(matlib)

file <- "C:/Users/rache/Documents/Northwestern/2019-2020 Senior Year/3. 2020 Spring/BIOL_SCI 347/Demography Problem Set/Matrices for R.xlsx"

# LOGGERHEAD TURTLE -----

# population vector
pop <- read_excel(file, sheet= "pop", col_names= F) %>% 
  as.matrix()

# no change
n_change <- read_excel(file, sheet= "no change", col_names= F) %>% 
  as.matrix()

# nest cages
nc <- read_excel(file, sheet= "nest cages", col_names= F) %>% 
  as.matrix()

# headstart
hs <- read_excel(file, sheet= "headstart", col_names= F) %>% 
  as.matrix()

# TEDs
ted <- read_excel(file, sheet= "TEDs", col_names= F) %>% 
  as.matrix()

# no beach harvest
n_bh <- read_excel(file, sheet= "no beach harvest", col_names= F) %>% 
  as.matrix()

# no change, transposed matrix
n_change_t <- read_excel(file, sheet= "no change transpose", col_names= F) %>% 
  as.matrix()

# no change eigenvalue and eigenvector
n_change_va <- eigen(n_change)$values[1]
n_change_ve <- eigen(n_change)$vectors[,1,drop= F]

# nest cages eigenvalue and eigenvector
nc_va <- eigen(nc)$values[1]
nc_ve <- eigen(nc)$vectors[,1, drop= F]

# headstart eigenvalue and eigenvector
hs_va <- eigen(hs)$values[1]
hs_ve <- eigen(hs)$vectors[,1, drop= F]

# TEDs eigenvalue and eigenvector
ted_va <- eigen(ted)$values[1]
ted_ve <- eigen(ted)$vectors[,1, drop= F]

# no beach harvest eigenvalue and eigenvector
n_bh_va <- eigen(n_bh)$values[1]
n_bh_ve <- eigen(n_bh)$vectors[,1, drop= F]

# no change reproductive values
n_change_t_va <- eigen(n_change_t)$values[1]
rv <- eigen(n_change_t)$vectors[,1, drop= F]


