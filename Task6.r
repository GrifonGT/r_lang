#https://www.jdoodle.com/execute-r-online

data = read.csv("/uploads/organizations-1000.csv")

print(paste("Size: ", length(data$Index)))
print(paste("Countries: ", length(levels(with(data, as.factor(Country))))))
print("From United States of America: ")
print(data[data$Country == "United States of America",])
print(paste("Average employees: ", mean(data$Number.of.employees)))
#print(data)