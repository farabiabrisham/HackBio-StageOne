# Let's look into the data

bacteria$C1
bacteria$C2
bacteria$species
nrow(bacteria) # Number of Rows
ncol(bacteria) # Number of Columns
dim(bacteria)

# Previewing dataset

head(bacteria)
tail(bacteria)

# Let us check the Biosafety Level

bacteria$BSL
table(bacteria$BSL)
bsl_data <- table(bacteria$BSL)
plot(bsl_data)
barplot(bsl_data)

