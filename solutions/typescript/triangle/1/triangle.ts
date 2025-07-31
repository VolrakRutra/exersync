export class Triangle {
  constructor(private a: number, private b: number, private c: number) {}

  get isTriangle(): boolean {
    if (this.a === 0 || this.b === 0 || this.c === 0) {
      return false;
    }
    if (
      this.a + this.b <= this.c ||
      this.b + this.c <= this.a ||
      this.a + this.c <= this.b
    ) {
      return false;
    }
    return true;
  }

  get isEquilateral(): boolean {
    return (
      this.isTriangle &&
      this.a === this.b &&
      this.b === this.c &&
      this.c === this.a
    );
  }

  get isIsosceles(): boolean {
    return (
      this.isTriangle &&
      (this.a === this.b || this.b === this.c || this.c === this.a)
    );
  }

  get isScalene(): boolean {
    return (
      this.isTriangle &&
      this.a !== this.b &&
      this.b !== this.c &&
      this.c !== this.a
    );
  }
}
