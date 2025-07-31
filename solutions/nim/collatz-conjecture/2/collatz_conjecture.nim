proc nextStep(curr:int):int =
  if(curr mod 2 == 0):
    return curr div 2
  else:
    return 3 * curr + 1 

proc steps*(n: int): int =
  if n < 1:
    raise newException(ValueError, "Number needs to be positive")
  var count = 0
  var start = n
  while start != 1:
    start = nextStep(start)
    count += 1
  return count

