import math
def score(x, y):
    distance = math.sqrt(x * x + y * y)
    return 10 if distance <= 1 else 5 if distance <= 5 else 1 if distance <= 10 else 0
