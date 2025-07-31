export function count(phrase: string): Map<string, number> {
  let result: Record<string, number> = {};
  for (let word of phrase.toLocaleLowerCase().trim().split(/\s+/)) {
    if (result.hasOwnProperty(word)) {
      result[word]++;
    } else {
      result = { ...result, [word]: 1 };
    }
  }
  return new Map(Object.entries(result));
}
