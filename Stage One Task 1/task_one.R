#           HackBio 
# Data Vizualisation Internship 2026
# Author: Farabi Abrisham Ahmed
# Stage One Task 1

#  GC Calculator 

GC_Calculator <- function(input_gene) {
  
  # Convert to uppercase for case-insensitive handling
  
  input_gene <- toupper(input_gene)
  input_gene <- strsplit(x = input_gene, split = '') [[1]]
  
  gc_counter <- 0          # Initialise counter
  
  for (nuc in input_gene) {
    if (nuc == 'G' | nuc == 'C') {
      gc_counter = gc_counter + 1
    }
  }
  
  gc_percent <- (gc_counter / length(input_gene)) * 100
  return(round(gc_percent, 2))
}

# Testing the Function

# Example 1: Test with different nucleic acid sequences

test_sequences <- c("GCATTTAT", "gcaTTTAT", "GTCAAATGGAAAACCC", "GGGGCCCC")

for (nuc in test_sequences) {
  result <- GC_Calculator(nuc)
  print(paste0("Sequence ", nuc, " has ", result, "% GC content"))
}

# The above example should return values as followed:
# "Sequence GCATTTAT has 25% GC content"
# "Sequence gcaTTTAT has 25% GC content"
# "Sequence GTCAAATGGAAAACCC has 43.75% GC content"
# "Sequence GGGGCCCC has 100% GC content"

