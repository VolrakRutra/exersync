export function compute(left: string, right: string): number {
  if (left.length != right.length) {
    throw new Error("DNA strands must be of equal length.");
  }

  let d = 0;
  for (let i in left.split("")) {
    if (left[i] != right[i]) {
      d++;
    }
  }
  return d;
}
