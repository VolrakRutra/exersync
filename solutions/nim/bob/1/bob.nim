import std/strutils

proc hey*(s: string): string =
  var str = strip(s)

  if isEmptyOrWhitespace(str):
    return "Fine. Be that way!"
  
  var isYelling = str == toUpperAscii(str) and str != toLowerAscii(str) 
  var isQuestion = str[str.len - 1] == '?'

  if isYelling and isQuestion:
    return "Calm down, I know what I'm doing!"

  if isQuestion:
    return "Sure."

  if isYelling:
    return "Whoa, chill out!"

  return "Whatever."

