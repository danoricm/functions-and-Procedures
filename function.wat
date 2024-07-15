;; function.wat
(module
  (import "env" "input" (func $input (param i32) (result i32)))
  (import "env" "output" (func $output (param i32)))
  (func $myFunction (param $param i32) (result i32)
    (local $x i32)
    (local $i i32)
    local.set $x (i32.add (local.get $param) (i32.const 10))
    if (i32.gt_s (local.get $x) (i32.const 15))
      then local.set $x (i32.sub (local.get $x) (i32.const 5))
      else local.set $x (i32.add (local.get $x) (i32.const 5))
    end
    local.set $i (i32.const 0)
    loop $loop
      local.set $x (i32.add (local.get $x) (local.get $i))
      local.set $i (i32.add (local.get $i) (i32.const 1))
      br_if $loop (i32.lt_s (local.get $i) (i32.const 3))
    end
    local.get $x
  )
  (func (export "main")
    (local $param i32)
    (local.set $param (call $input (i32.const 0)))
    if (i32.eq (local.get $param) (i32.const 0))
      then (call $output (i32.const 0)) ;; "Invalid input"
      else (call $output (call $myFunction (local.get $param)))
    end
  )
)
