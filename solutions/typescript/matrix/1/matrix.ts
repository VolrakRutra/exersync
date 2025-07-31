export class Matrix {
  matrix: string;
  constructor(matrix: string) {
    this.matrix = matrix;
  }

  get rows(): number[][] {
    const rowsString = this.matrix.split("\n");
    const rowSplitStrings = rowsString.map((row) => row.split(" "));
    return rowSplitStrings.map((row) => row.map((item) => parseInt(item)));
  }

  get columns(): number[][] {
    const result = [];
    for (let j = 0; j < this.rows[0].length; j++) {
      let cols = [];
      for (let i = 0; i < this.rows.length; i++) {
        cols.push(this.rows[i][j]);
      }
      result.push(cols);
    }
    return result;
  }
}
