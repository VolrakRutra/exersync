export function convert(plingPlanger: number): string {
  let result = "";
  if (plingPlanger % 3 === 0) {
    result += "Pling";
  }
  if (plingPlanger % 5 === 0) {
    result += "Plang";
  }
  if (plingPlanger % 7 === 0) {
    result += "Plong";
  }

  if (result === "") {
    return `${plingPlanger}`;
  } else {
    return result;
  }
}
