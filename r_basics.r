#           HackBio 
# Data Vizualisation Internship 2026

# R Basics

# Create variables

x <- 2
age <- 23
name <- "Farabi"
print (x)

# Reuse the variables

print(x)
print(age)
print(name)

# Reuse them as a sentence

paste0(name, ' is ', age, ' years old.')

# Data types in R

class(10.5 )            # numeric
class(3L)               # integer
class(9i)               # complex
class('Streptococcus')  # character
class(F)                # logical
class(T)                # logical

# Data structure (Vectors)

c()                 # null vector
c(1)                # a vector of length 1
c(1,2)              # a vector of length 2
length( c(1,2) )    # how to check length of a vector; vector length = 2
length( c(1:100) )  # how to check length of a vector; vector length = 100

# Mixing content

mixed_up_vector <- c(1, 2, T, '3')
print(mixed_up_vector)  
class(mixed_up_vector)  # character

# Naming vectors

c(10, 14.2, 3.5)
gene_expr <- c('A' = 10, 'B' = 14.2, 'C' = 3.5)
print(gene_expr)
class(gene_expr)
names(gene_expr)

# Indexing vectors

gene_expr[1]
gene_expr[2]
gene_expr[3]
gene_expr[-2]
gene_expr <- gene_expr[-2]

# gene_expr <- gene_expr[-2] --- to overwrite our original dataset
# print(gene_expr)

gene_expr[1]
gene_expr['A']
gene_expr['C']

# Returning an unlabeled output

gene_expr[['C']]
gene_expr[[1]]

# Dataframes

my_genes <- c('A', 'B', 'C')
sample_1 <- c(89, 332, 56)
sample_2 <- c(23, 242, 990)
sample_3 <- c(120, 23, 189)

gene_expr_df <- data.frame(my_genes, sample_1, sample_2, sample_3)
print(gene_expr_df)

# Exploring the matrix

gene_expr_df$my_genes
gene_expr_df$sample_1
gene_expr_df$sample_2
gene_expr_df$sample_3

# Select everything on the second row

gene_expr_df[2,]
gene_expr_df[1,]
gene_expr_df[c(1,3)]
gene_expr_df[c(1,3), 2]
gene_expr_df[c(1,3), 1:2]

# loops

seq(1, 10)        # Generates: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
seq(1:89)         # Same as 1:89, generates 1 to 89
seq(1, 10, 2)     # Start at 1, end at 10, step by 2

odd_nums <- seq(1, 10, 2)   # Gives: 1, 3, 5, 7, 9 (odd)
even_nums <- seq(0, 10, 2)  # Gives: 0, 2, 4, 6, 8, 10 (even)

print(even_nums)

for (i in even_nums) {
  print(i)
  Sys.sleep(2)
  print('I am now awake, going to the next value')
}

# Conditions

my_new_sequence <- c( seq(23, 87, 5), seq(2, 47, 3) )

# Positive:

if (2 %in% my_new_sequence) {
  print('Yes')
} else {
  print('No')
}
# Negative:

if (100 %in% my_new_sequence) {
  print('Yes')
} else {
  print('No')
}

# Combining for and if statements

for (i in my_new_sequence) {
  if (i%%2==0){
    print( paste0(i, ' is an even number'))
  }else{
    print(paste0(i, ' is an odd number'))
  }
}

# #   Functions

# In-built functions

c()
print(1)
sum( c(1, 2, 3) )
mean( c(89, 2, 34, 45) )

# How to solve mean

sum_of_all_the_numbers <- 0
length_of_all_the_numbers <- 0

for (i in c(89, 2, 34, 45)) {
  sum_of_all_the_numbers <- length_of_all_the_numbers + i
  length_of_all_the_numbers <- length_of_all_the_numbers + 1
  print(sum_of_all_the_numbers)
  Sys.sleep(4)
}

sum_of_all_the_numbers/length_of_all_the_numbers

bacteria$C2

# The mean function

mean(bacteria$C1)

# More in-built functions

print()
c()
sum()
table()
barplot()
plot()
read.csv()
paste0()
abs()
cbind()             # to join columns vertically
rbind()             # to join rows horizontally
matrix()
seq()
lm()
install.packages()

# # Cumstom Functions

geneA <- 'GTCAAATGGAAAACCC'

# Loops + Conditions + Operation

length(geneA)
geneA <- strsplit(x = geneA, split ='')[[1]]
print(geneA)
length(geneA)   # should give a value of 16 now
 
gc_counter <- 0 # initialise with zero

for (nuc in geneA) {
  print(nuc)
  
  if (nuc == 'G' | nuc == 'C') {
    gc_counter = gc_counter+1
  }
}

( gc_counter/length(geneA) ) * 100

#         Combining all operators into a function

GC_Calculator <- function(input_gene) {
  input_gene <- strsplit(x = input_gene, split = '') [[1]]
  print(length(input_gene))
  
  # the core operations:
  
  gc_counter <- 0 # initialise with zero
  
  for (nuc in input_gene) {             # for loop
    print(nuc)
    
    if (nuc == 'G' | nuc == 'C') {
      gc_counter = gc_counter+1
    }
  }
  
  return((gc_counter/length(input_gene) ) * 100)
  
}

geneB <- 'GTCAAATGGAAAACCCTCATCATCATCATCATGGGGATTA'
my_final_GC_percent <- GC_Calculator(input_gene = geneB)
print(my_final_GC_percent)

# Installing Packages

install.packages('pheatmap')    # Internet access required

















