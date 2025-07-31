(module
  ;; The name prefixed with $ is used to internally refer to functions via the call instruction
  ;; The string in the export instruction is the name of the export made available to the
  ;; embedding environment (in this case, Node.js). This is used by our test runner Jest.
 
  (func $squareOfSum (export "squareOfSum")  (param i32) (result i32)
    (local i32 i32)
    i32.const 1
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.const 0
      i32.le_s
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        local.get 2
        i32.add
        local.set 2
        local.get 0
        local.get 1
        i32.le_s
        br_if 1 (;@1;)
        local.get 1
        local.get 0
        local.get 1
        i32.gt_s
        i32.add
        local.tee 1
        local.get 0
        i32.le_s
        br_if 0 (;@2;)
      end
    end
    local.get 2
    local.get 2
    i32.mul)
 
  (func $sumOfSquares (export "sumOfSquares")  (param i32) (result i32)
    (local i32 i32)
    i32.const 1
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.const 0
      i32.le_s
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        local.get 1
        i32.mul
        local.get 2
        i32.add
        local.set 2
        local.get 0
        local.get 1
        i32.le_s
        br_if 1 (;@1;)
        local.get 1
        local.get 0
        local.get 1
        i32.gt_s
        i32.add
        local.tee 1
        local.get 0
        i32.le_s
        br_if 0 (;@2;)
      end
    end
    local.get 2)

  (func $difference (export "difference")  (param i32) (result i32)
    (local i32 i32 i32)
    block (result i32)  ;; label = @1
      i32.const 1
      local.set 1
      i32.const 0
      local.get 0
      i32.const 0
      i32.le_s
      br_if 0 (;@1;)
      drop
      loop  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 2
          i32.add
          local.set 2
          local.get 0
          local.get 1
          i32.le_s
          br_if 0 (;@3;)
          local.get 1
          local.get 0
          local.get 1
          i32.gt_s
          i32.add
          local.tee 1
          local.get 0
          i32.le_s
          br_if 1 (;@2;)
        end
      end
      i32.const 1
      local.set 1
      loop  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 1
          i32.mul
          local.get 3
          i32.add
          local.set 3
          local.get 0
          local.get 1
          i32.le_s
          br_if 0 (;@3;)
          local.get 1
          local.get 0
          local.get 1
          i32.gt_s
          i32.add
          local.tee 1
          local.get 0
          i32.le_s
          br_if 1 (;@2;)
        end
      end
      local.get 2
      local.get 2
      i32.mul
      local.get 3
      i32.sub
    end)
)


;; Shamelessly generated from this Rust code
;; #[wasm_bindgen]
;; pub fn square_of_sum(max: i32) -> i32 {
;;     let mut sum = 0;
;;     for i in 1..=max {
;;         sum += i;
;;     }
;;     sum * sum
;; }

;; #[wasm_bindgen]
;; pub fn sum_of_square(max: i32) -> i32 {
;;     let mut sum = 0;
;;     for i in 1..=max {
;;         sum += i * i;
;;     }
;;     sum
;; }

;; #[wasm_bindgen]
;; pub fn difference(max: i32) -> i32 {
;;     square_of_sum(max) - sum_of_square(max)
;; }