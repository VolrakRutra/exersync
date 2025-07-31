def saddle_points(matrix):
    result = []
    if len(matrix) == 0:
        return result

    row_length = len(matrix[0])

    for row in matrix:
        if len(row) != row_length:
            raise ValueError("irregular matrix")

    for row_index, row in enumerate(matrix):
        row_max = max(row)
        for col_index, _ in enumerate(row):
            col_min = min(get_column_as_list(matrix, col_index))
            if (row_max == col_min):
                result.append({"row": row_index + 1, "column":col_index + 1})
 
    return result


def get_column_as_list(matrix, column_index):
    result = []
    for row in matrix:
        result.append(row[column_index])
    return result


def find_indices(row, value):
    result = []
    for index, item in enumerate(row):
        if item == value:
            result.append(index)
    return result