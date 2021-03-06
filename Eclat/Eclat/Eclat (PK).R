# Eclat
# Import dataset
dataset <- read.csv('Market_Basket_Optimisation.csv', header = FALSE)

library(arules)
dataset = read.transactions('Market_Basket_Optimisation.csv', sep = ',', rm.duplicates = TRUE)
summary(dataset)
itemFrequencyPlot(dataset, topN = 10)

# Training Eclat Model
rules = eclat(data = dataset, parameter = list(support = 0.004, minlen = 2))

# Visualize the results
inspect(sort(rules, by = 'support')[1:10])