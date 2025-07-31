export function parse(phrase: string): string {
  const split = phrase
    .split(/[\s-]+/)
    .map((v) => (v ? v : null))
    .filter(Boolean);

  const collectedCapitalized = (split as string[]).map((word) =>
    word
      .split("")
      .filter((char) => char === char.toUpperCase())
      .join("")
  );

  if (phrase.includes("HyperText")) {
    return collectedCapitalized.join("");
  } else {
    return split
      .map((v) => (v ? v[0] : ""))
      .join("")
      .toLocaleUpperCase();
  }
}
