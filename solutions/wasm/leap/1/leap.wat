(module
  ;; Returns 1 if leap year, 0 otherwise
  (func (export "isLeap") (param i32) (result i32)
    local.get 0
    i32.const 400
    i32.rem_s
    i32.eqz
    if  ;; label = @1
      i32.const 1
      return
    end
    local.get 0
    i32.const 100
    i32.rem_s
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 0
    i32.const 3
    i32.and
    i32.eqz
  )
)

;; Shamelessly generated from this Rust code
;; (I don't know WebAssembly lol)

;; #[wasm_bindgen]
;; pub fn is_leap_year(year: i32) -> i32 {
;;     if year % 400 == 0 {
;;         1
;;     } else if year % 100 == 0 {
;;         0
;;     } else if year % 4 == 0 {
;;         1
;;     } else {
;;         0
;;     }
;; }