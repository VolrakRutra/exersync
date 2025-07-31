const seqToProt: Record<string, string> = {
  AUG: "Methionine",
  UUU: "Phenylalanine",
  UUC: "Phenylalanine",
  UUA: "Leucine",
  UUG: "Leucine",
  UCU: "Serine",
  UCC: "Serine",
  UCA: "Serine",
  UCG: "Serine",
  UAU: "Tyrosine",
  UAC: "Tyrosine",
  UGU: "Cysteine",
  UGC: "Cysteine",
  UGG: "Tryptophan",
  UAA: "STOP",
  UAG: "STOP",
  UGA: "STOP",
};

export function translate(s: string): string[] {
  const split = [];
  for (let i = 0; i < s.length; i += 3) {
    split.push(s.substring(i, i + 3));
  }

  const result = [];
  for (let seq of split) {
    if (seqToProt[seq] == "STOP") {
      break;
    }
    result.push(seqToProt[seq]);
  }
  return result;
}
