(module
  (func (export "eggCount") (param $number i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.const 0
    i32.gt_s
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.const 1
        i32.and
        local.get 1
        i32.add
        local.set 1
        local.get 0
        i32.const 1
        i32.gt_u
        local.get 0
        i32.const 1
        i32.shr_u
        local.set 0
        br_if 0 (;@2;)
      end
    end
    local.get 1)
)

;; Shamelessly generated from Rust
;; #[wasm_bindgen]
;; pub fn eggCount(number: i32) -> i32 {
;;     let mut num = number;
;;     let mut count = 0;
;;     while num > 0 {
;;         if num % 2 == 1 {
;;             count += 1;
;;         }
;;         num = num / 2;
;;     }
;;     count
;; }