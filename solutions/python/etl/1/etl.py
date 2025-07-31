def transform(legacy_data: dict):
    items = legacy_data.items()
    result = {}
    for k, v in items:
        for letter in v:
            result[letter.lower()] = k
    return result  
