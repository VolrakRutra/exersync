const buildLetterValues = (): Record<string, number> => {
  const result: Record<string, number> = {};
  for (let l of "AEIOULNRST") {
    result[l] = 1;
  }

  for (let l of "DG") {
    result[l] = 2;
  }

  for (let l of "BCMP") {
    result[l] = 3;
  }

  for (let l of "FHVWY") {
    result[l] = 4;
  }

  result["K"] = 5;

  for (let l of "JX") {
    result[l] = 8;
  }

  for (let l of "QZ") {
    result[l] = 10;
  }

  return result;
};

export function score(word: string | undefined): number {
  if (!word) {
    return 0;
  }

  const letterValues = buildLetterValues();
  let result = 0;

  for (let l of word) {
    result += letterValues[l.toUpperCase()];
  }
  return result;
}
