library(datasets)
data(airquality)

# generate and sort vector

vector = round(runif(n=20, min=1, max=20), 0)
print(vector)

sort = function(raw) {
    sorted = array(raw)
    
    for (i in (length(sorted)):2) {
        for (j in 1:(i - 1)) {
            if (sorted[i] < sorted[j]) {
                k = sorted[i]
                sorted[i] = sorted[j]
                sorted[j] = k
            }
        }
    }
    
    return (sorted)
}

print(sort(vector))

# find element

find = function(raw, element) {
    for (i in 1:length(raw)) {
        if (raw[i] == element) {
            return (i)
        }
    }
    
    return (-1)
}

print(find(vector, 10))

# average temp
print("Avarage Temp")
splited = split(airquality, airquality$Month)
for (month in splited) {
    print(mean(month$Temp))
}

 #print(airquality)

# wind velocity rad>100

print("Wind velocity")
for (month in splited) {
    windToRad = month[month$Solar.R > 100 & !is.na(month$Solar.R),]
    print(mean(windToRad$Wind))
 #   print(windToRad)
}

# Highest Ozon

print("Highest ozon")
maxOzon = 0
monthNumber = 0

for (month in splited) {
    ozonFrame = month[!is.na(month$Ozon),]
    ozonValue = mean(ozonFrame$Ozon)
#    print(ozonValue)
    
    if (ozonValue > maxOzon) {
        maxOzon = ozonValue
        monthNumber = levels(with(ozonFrame, as.factor(Month)))
    }
}

print(paste("Ozon: ", maxOzon))
print(paste("Month: ", monthNumber))
