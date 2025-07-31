(module

  (func (export "score") (param f32 f32) (result i32)
    block (result i32)  ;; label = @1
      i32.const 0
      local.get 0
      local.get 0
      f32.mul
      local.get 1
      local.get 1
      f32.mul
      f32.add
      local.tee 0
      f32.const 0x1.9p+6 (;=100;)
      f32.gt
      br_if 0 (;@1;)
      drop
      i32.const 1
      local.get 0
      f32.const 0x1.9p+4 (;=25;)
      f32.gt
      br_if 0 (;@1;)
      drop
      i32.const 5
      i32.const 10
      local.get 0
      f32.const 0x1p+0 (;=1;)
      f32.gt
      select
    end)
)
