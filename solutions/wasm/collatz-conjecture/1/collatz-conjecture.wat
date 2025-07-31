(module
  (func (export "steps") (param $number i32) (result i32)
    (local i32)
    local.get 0
    i32.const 0
    i32.le_s
    if  ;; label = @1
      i32.const -1
      return
    end
    local.get 0
    i32.const 1
    i32.ne
    if  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        i32.const 1
        i32.and
        if (result i32)  ;; label = @3
          local.get 0
          i32.const 3
          i32.mul
          i32.const 1
          i32.add
        else
          local.get 0
          i32.const 2
          i32.div_s
        end
        local.tee 0
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 1)
)

