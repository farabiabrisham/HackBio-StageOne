#           HackBio 
# Data Vizualisation Internship 2026
# Author: Farabi Abrisham Ahmed
# Stage One Task 2

# Protein Weight Calculator (in kDa)

Protein_Weight_Calculator <- function(protein_sequence = "Myname") {
  
  # Create amino acid weights list
  aa_weights <- c(
    A = 89.09, R = 174.20, N = 132.12, D = 133.10, C = 121.15,
    E = 147.13, Q = 146.15, G = 75.07, H = 155.16, I = 131.18,
    L = 131.18, K = 146.19, M = 149.21, F = 165.19, P = 115.13,
    S = 105.09, T = 119.12, W = 204.23, Y = 181.19, V = 117.15
  )
  
  # Convert to uppercase (case-insensitive)
  protein_sequence <- toupper(protein_sequence)
  
  # Split into individual amino acids
  aa_vector <- strsplit(x = protein_sequence, split = '')[[1]]
  
  # Initialize total weight
  total_weight <- 0
  
  # Loop through amino acids
  for (aa in aa_vector) {
    
    # Check if amino acid is valid
    if (aa %in% names(aa_weights)) {
      
      # Add weight (using vector indexing we learned)
      total_weight <- total_weight + aa_weights[aa]
    } else {
      
      # Invalid amino acid found - return 0
      return(0)
    }
  }
  
  # Convert to kDa (divide by 1000) and return
  weight_kda <- total_weight / 1000
  return(round(weight_kda, 3))
}

# Testing the function

# Example 1: Test with different amino acid sequences

protein_examples <- c("A", "AC", "MAGIC", "PROTEIN")

for (protein in protein_examples) {
  weight <- Protein_Weight_Calculator(protein)
  print(paste0("Protein '", protein, "' weighs ", weight, " kDa"))
}

# The above example should return the values:

# "Protein 'A' weighs 0.089 kDa"
# "Protein 'AC' weighs 0.21 kDa"
# "Protein 'MAGIC' weighs 0.566 kDa"
# "Protein 'PROTEIN' weighs 0 kDa"

# Example 2: Test with a specific amino acid: Valine (V) which is 117.15 Da

Protein_Weight_Calculator(protein_sequence = 'V')

# The above example should return values as followed:

#     V
# 0.117