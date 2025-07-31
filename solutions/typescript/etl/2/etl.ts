export function transform(
  old: Record<string, string[]>
): Record<string, number> {
  const arrs = Object.entries(old).map(([k, v]) =>
    v
      .map((val) => ({ [val.toLocaleLowerCase()]: parseInt(k) }))
      .reduce((p, c) => ({ ...p, ...c }), {})
  );

  return arrs.reduce((p, c) => ({ ...p, ...c }), {});
}
