def score(x, y):
    d = x * x + y * y
    return 10 if d <= 1 else 5 if d <= 25 else 1 if d <= 100 else 0
