const convertHelper = (
  c: number,
  i10: string,
  i5: string,
  i1: string
): string =>
  c === 9
    ? i1 + i10
    : c === 4
    ? i1 + i5
    : c >= 5
    ? i5 + i1.repeat(c - 5)
    : i1.repeat(c);

export const toRoman = (n: number): string => {
  const s = `${n}`;
  const s1000 = "M".repeat(parseInt(s[s.length - 4] ?? 0));
  const s100 = convertHelper(parseInt(s[s.length - 3] ?? 0), "M", "D", "C");
  const s10 = convertHelper(parseInt(s[s.length - 2] ?? 0), "C", "L", "X");
  const s1 = convertHelper(parseInt(s[s.length - 1] ?? 0), "X", "V", "I");
  return `${s1000}${s100}${s10}${s1}`;
};
