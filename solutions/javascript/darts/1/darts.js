export const score = (x, y) => {
  let distance = Math.sqrt(Math.pow(x, 2) + Math.pow(y, 2));
  return distance <= 1 ? 10 : distance <= 5 ? 5 : distance <= 10 ? 1 : 0;
};
