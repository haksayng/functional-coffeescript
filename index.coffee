# Function to use with reduce()
adder = (sum, current_val) -> sum + current_val

# Build up to Standard Deviation function one function at a time
sum      = (xs) -> xs.reduce adder
mean     = (xs) -> (sum xs) / xs.length
variance = (xs) -> 
    x_bar = mean xs
    numerator = sum xs.map (x) -> (x - x_bar)**2
    return numerator / (xs.length - 1)
stdev    = (xs) -> Math.sqrt variance xs