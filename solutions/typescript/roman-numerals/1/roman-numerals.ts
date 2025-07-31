const convertHelper = (
  count: number,
  if9: string,
  if4: string,
  ifgt5: string,
  iflt5: string
): string => {
  if (count === 9) {
    return if9;
  } else if (count === 4) {
    return if4;
  } else if (count >= 5) {
    return ifgt5 + iflt5.repeat(count - 5);
  } else {
    return iflt5.repeat(count);
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
  const s100 = convertHelper(c100, "CM", "CD", "D", "C");
  const s10 = convertHelper(c10, "XC", "XL", "L", "X");
  const s1 = convertHelper(c1, "IX", "IV", "V", "I");

  return `${s1000}${s100}${s10}${s1}`;
};
