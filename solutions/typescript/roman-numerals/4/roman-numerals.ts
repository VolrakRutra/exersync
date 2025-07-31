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

// export const toRoman = (n: number): string => {
//   const c1000 = Math.floor(n / 1000);
//   const c100 = Math.floor((n - c1000 * 1000) / 100);
//   const c10 = Math.floor((n - (c1000 * 1000 + c100 * 100)) / 10);
//   const c1 = n - (c1000 * 1000 + c100 * 100 + c10 * 10);
//   const s1000 = "M".repeat(c1000);
//   const s100 = convertHelper(c100, "M", "D", "C");
//   const s10 = convertHelper(c10, "C", "L", "X");
//   const s1 = convertHelper(c1, "X", "V", "I");
//   return `${s1000}${s100}${s10}${s1}`;
// };
export const toRoman = (n: number): string => {
  const numstr = `${n}`;
  const s1000 = "M".repeat(parseInt(numstr[numstr.length - 4]) ?? 0);
  const s100 = convertHelper(
    parseInt(numstr[numstr.length - 3]) ?? 0,
    "M",
    "D",
    "C"
  );
  const s10 = convertHelper(
    parseInt(numstr[numstr.length - 2]) ?? 0,
    "C",
    "L",
    "X"
  );
  const s1 = convertHelper(
    parseInt(numstr[numstr.length - 1]) ?? 0,
    "X",
    "V",
    "I"
  );
  return `${s1000}${s100}${s10}${s1}`;
};
