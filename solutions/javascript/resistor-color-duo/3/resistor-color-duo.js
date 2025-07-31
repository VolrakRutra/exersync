const COLORS = [
  "black",
  "brown",
  "red",
  "orange",
  "yellow",
  "green",
  "blue",
  "violet",
  "grey",
  "white",
];
export const decodedValue = ([c1, c2]) =>
  Number(COLORS.indexOf(c1)) * 10 + Number(COLORS.indexOf(c2));