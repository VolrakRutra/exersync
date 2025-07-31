export function isArmstrongNumber(number: number): boolean {
  const digits = `${number}`.split("").map((d) => parseInt(d));

  const sum = digits.reduce((p, c) => p + Math.pow(c, digits.length), 0);

  return sum === number;
}
