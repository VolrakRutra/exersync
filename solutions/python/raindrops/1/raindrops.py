def convert(number):
    divisible = False
    result = ""
    if number % 3 == 0:
        divisible = True
        result += "Pling"
    if number % 5 == 0:
        divisible = True
        result += "Plang"
    if number % 7 == 0:
        divisible = True
        result += "Plong"
    if divisible:
        return result
    else:
        return str(number) 
