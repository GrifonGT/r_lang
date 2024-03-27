## Online R compiler to run R program online
## Print "Try programiz.pro" message

array = rnorm(100, 50, 10)

max = max(array)
print(paste("Max value: ", max))

maxIndex = which.max(array)
print(paste("Max index: ", maxIndex))

min = min(array)
print(paste("Min value: ", min))

minIndex = which.min(array)
print(paste("Min index: ", minIndex))

size = length(array)
average = prod(array) / size
print(paste("Average: ", average ^ (1 / size)))

sorted = sort(array)
print(sorted)

if (size %% 2 == 0) {
    first = size / 2
    median = (sorted[first] + sorted[first+1]) / 2
} else {
    median = sorted[(size + 1) / 2]
}

print(paste("Median: ", median))

array1 = list()
for (x in array) {
    if (x >= 40 && x <= 60) {
        array1 = append(array1, x)
    }
}

array1 = array(unlist(array1))
print (array1)

matrixByRow = matrix(array, nrow = 10, byrow = TRUE)
# print(matrixByRow)

matrixByColumn = matrix(array, ncol = 10)
# print(matrixByColumn)

frame = data.frame (
  Name = c("Marian", "Alina", "Bohdan"),
  Math_analysis = c(5, 5, 5),
  Algebra = c(5, 5, 5),
  Programing = c(5, 5, 5)
)

print(frame)

a = c(1.7, -3.1, 2.2, 0.6, 1.8, -0.1,
        3.3, 4.2, 0.7, 5.4, 2.1, 1.6,
        -0.4, 5.7, 4.1, 3.6, -0.5, 2.7,
        4.7, -0.6, 3.3, 7.1, 1.9, -4.6,
        -0.1, 7.2, 4.8, 2.3, 5.1, 3.3,
        2.6, 3.1, 7.4, -4.1, 8.2, -0.1)
        
a = matrix(a, ncol = 6)

b = array(c(-7.31, 40.53, 26.42, 23.24, 52.4, 31.99))

inverseA = solve(a)
x = inverseA %*% b
print(x)

print(array)