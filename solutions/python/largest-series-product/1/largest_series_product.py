def largest_product(series, size):
    if size < 0:
        raise ValueError("span must not be negative")

    if len(series) < size:
        raise ValueError("span must be smaller than string length")

    if len(series) > 0 and not series.isnumeric():
        raise ValueError("digits input must only contain digits")

    current_max = 0
    for i in range(len(series) - size + 1):
        product = find_product(series[i: i+size])
        if product > current_max:
            current_max = product
    return current_max

def find_product(seq):
    if "0" in seq:
        return 0
    numbers = [int(c) for c in seq]
    result = 1
    for n in numbers:
        result *= n
    return result