func = function(x) {
    return (cos(x) - 2 * x)
}

uniroot(f = func, interval=c(-10,10))