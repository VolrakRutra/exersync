const convertHelper = (
  count: number,
  i10: string,
  i5: string,
  i1: string
): string => {
  if (count === 9) {
    return i1 + i10;
  } else if (count === 4) {
    return i1 + i5;
  } else if (count >= 5) {
    return i5 + i1.repeat(count - 5);
  } else {
    return i1.repeat(count);
  }
};

export const toRoman = (n: number): string => {
  const c1000 = Math.floor(n / 1000);
  const t1000 = c1000 * 1000;

  const c100 = Math.floor((n - t1000) / 100);
  const t100 = c100 * 100;

  const c10 = Math.floor((n - (t1000 + t100)) / 10);
  const t10 = c10 * 10;

  const c1 = n - (t1000 + t100 + t10);

  const s1000 = "M".repeat(c1000);
  const s100 = convertHelper(c100, "M", "D", "C");
  const s10 = convertHelper(c10, "C", "L", "X");
  const s1 = convertHelper(c1, "X", "V", "I");

  return `${s1000}${s100}${s10}${s1}`;
};
