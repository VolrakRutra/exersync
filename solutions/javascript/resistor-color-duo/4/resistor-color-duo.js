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

const c2v = (color) => COLORS.indexOf(color);

export const decodedValue = ([c1, c2]) => c2v(c1) * 10 + c2v(c2);
