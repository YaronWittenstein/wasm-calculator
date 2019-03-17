(module
  (import "js" "showResult" (func $show_result (param i32)))
  (func $add_calc (param i32 i32) (result i32)
    (get_local 0)
    (get_local 1)
    (i32.add))

  (func $sub_calc (param i32 i32) (result i32)
    (get_local 0)
    (get_local 1)
    (i32.sub))

  (func $mul_calc (param i32 i32) (result i32)
    (get_local 0)
    (get_local 1)
    (i32.mul))

  (func $do_calc (param $a i32) (param $b i32) (param $op i32) (result i32)
    (if (result i32)
      (i32.eq (get_local $op) (i32.const 43))
      (then  ;; `43` stands for `+`
        (get_local $a)
        (get_local $b)
        (call $add_calc))
      (else
        (if (result i32)
          (i32.eq (get_local $op) (i32.const 45))
          (then ;; `45` stands for `-`
            (get_local $a)
            (get_local $b)
            (call $sub_calc))
          (else
            (if (result i32)
              (i32.eq (get_local $op) (i32.const 42))
              (then ;; `42` stands for `*`
                (get_local $a)
                (get_local $b)
                (call $mul_calc))
              (else
                (i32.const -1)))))))) ;; -1 stands for invalid `op`

  (func (export "calc") (param i32 i32 i32)
       (get_local 0)
       (get_local 1)
       (get_local 2)
       (call $do_calc)
       (call $show_result)
       (return)))
