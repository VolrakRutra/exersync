export function isIsogram(t: string): boolean {
  const clean = t.replaceAll(" ", "").replaceAll("-", "").toLocaleLowerCase();
  const set = new Set(clean.split(""));
  return clean.length == set.size;
}
