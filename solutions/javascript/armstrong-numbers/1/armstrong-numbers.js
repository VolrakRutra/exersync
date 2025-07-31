//
// This is only a SKELETON file for the 'Armstrong Numbers' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const isArmstrongNumber = (number) => {
  const digits = `${number}`.split("").map((d) => parseInt(d));
  const sum = digits.reduce((p, c) => p + Math.pow(c, digits.length), 0);
  return sum === number;
};
