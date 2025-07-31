const COLORS = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"];
export const decodedValue = (arr) => {
  let result = "";
  for (let i = 0; i < 2; i++) {
      result += COLORS.indexOf(arr[i]);
  }
  return Number(result);
};
