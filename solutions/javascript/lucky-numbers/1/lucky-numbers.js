// @ts-check

/**
 * Calculates the sum of the two input arrays.
 *
 * @param {number[]} array1
 * @param {number[]} array2
 * @returns {number} sum of the two arrays
 */
export function twoSum(array1, array2) {
  const num1 = parseInt(array1.map((v) => `${v}`).join(""));
  const num2 = parseInt(array2.map((v) => `${v}`).join(""));
  return num1 + num2;
}

/**
 * Checks whether a number is a palindrome.
 *
 * @param {number} value
 * @returns {boolean} whether the number is a palindrome or not
 */
export function luckyNumber(value) {
  const strVal = `${value}`;

  for (let i = 0; i < Math.floor(strVal.length / 2) + 1; i++) {
    if (strVal[i] !== strVal[strVal.length - 1 - i]) {
      return false;
    }
  }

  return true;
}

/**
 * Determines the error message that should be shown to the user
 * for the given input value.
 *
 * @param {string|null|undefined} input
 * @returns {string} error message
 */
export function errorMessage(input) {
  if (!input) {
    return "Required field";
  }

  if (input === "0" || isNaN(Number(input.trim()))) {
    return "Must be a number besides 0";
  }

  return "";
}
