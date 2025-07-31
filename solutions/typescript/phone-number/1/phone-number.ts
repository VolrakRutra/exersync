const isNumber = (c: string): boolean => c >= "0" && c <= "9";

export function clean(dirty: string): string {
  const split = dirty.split("");

  if (split.some((v) => v >= "a" && v <= "z")) {
    throw new Error("Letters not permitted");
  }
  if (split.some((v) => "@:!".includes(v))) {
    throw new Error("Punctuations not permitted");
  }

  const resultArray = [];
  for (let i = dirty.length - 1; i >= 0; i--) {
    if (resultArray)
      if (isNumber(dirty[i])) {
        resultArray.unshift(dirty[i]);
      } else {
        continue;
      }
  }
  if (resultArray.length == 11) {
    if (resultArray[0] != "1") {
      throw new Error("11 digits must start with 1");
    } else {
      resultArray.shift();
    }
  }
  if (resultArray.length < 10) {
    throw new Error("Incorrect number of digits");
  }

  if (resultArray.length > 11) {
    throw new Error("More than 11 digits");
  }

  if (resultArray[0] == "0") {
    throw new Error("Area code cannot start with zero");
  }
  if (resultArray[0] == "1") {
    throw new Error("Area code cannot start with one");
  }
  if (resultArray[3] == "0") {
    throw new Error("Exchange code cannot start with zero");
  }
  if (resultArray[3] == "1") {
    throw new Error("Exchange code cannot start with one");
  }

  return resultArray.join("");
}
