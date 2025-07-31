export function isIsogram(t: string): boolean {
  const clean = t.replace(/ |-/gi, "").toLocaleLowerCase();
  const set = new Set(clean.split(""));
  return clean.length == set.size;
}
