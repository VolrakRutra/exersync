import sequtils
import parseutils
import math
proc isArmstrongNumber*(n: int): bool =
  # convert to string
  var str = $n
  # get length of that string
  var exp = str.len()
  # split string into digit chars
  var arr = str.toSeq()
  # initialize a seq of ints
  var intarr = newSeq[int](0)

  for c in arr:
    var res: int
    # parse char into res variable
    discard parseInt($c, res, 0)
    # calculate the exponent
    var toPow = pow(float64(res), float64(exp))
    # round the result of pow to int
    res = int(round(toPow))
    # add the result to array
    intarr.add(res)
  # sum the array (similar to reduce)
  var folded = foldl(intarr, a+b)
  # check if sum is equal to the initial number
  return folded == n
