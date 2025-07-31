def sum_of_multiples(limit, multiples):
    sets = []
    for m in multiples:
        s = set()
        if m > limit or m == 0:
            sets.append(s)
        else:
            c = m
            while c < limit:
                s.add(c)
                c += m
            sets.append(s)

    undup_set = set()
    for s in sets:
        undup_set = undup_set.union(s)

    return sum(list(undup_set))