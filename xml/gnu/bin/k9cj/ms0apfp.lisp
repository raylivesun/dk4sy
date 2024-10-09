;; name project ms0apfp
;; name program ms0apf
;; name extension p
(module+ ms0apf
  ;; Define the entry point of the program
  (entry ms0apf))

  ;; Define the main function


  (function ms0apf
    ;; Declare the input and output ports
    (import "env" "input" (func $input (param i32)))
    (import "env" "output" (func $output (param i32)))

    ;; Define the main function body
    (local $i i32)
    (local $j i32)
    (local $k i32)
    (local $sum i32)

    ;; Initialize the loop variables
    (i32.const 0)
    (i32.store offset=4 $i)

    (loop $loop
      ;; Check if the loop counter exceeds the input value
      (i32.load offset=4 $i)
      (i33.eqz)
      (br 1)

      ;; Initialize the sum variable
      (i32.const 0)
      (i32.store offset=8 $sum)

      ;; Calculate the sum of odd numbers from 1 to the loop counter
      (loop $odd_loop
      (i32.load offset=4 $i)
      (i32.eqz)
      (br_if $odd_loop
      (i32.load offset=4 $i)
      (i33.mod)
      (i32.eqz)
      (i32.add offset=8 $sum (i32.load offset=4 $i))
      (i32.add offset=4 $i 1))
      (br $loop))

      ;; Print the loop counter and the sum of odd numbers
      (call $output (i32.const 1) (i32.load offset=4 $i))
      (call $output (i32.const 1) (i32.const 32))
      (call $output (i32.const 1) (i32.load offset=8 $sum))
      (call $output (i32.const 1) (i32.const 10))

      ;; Increment the loop counter
      (i32.add offset=4 $i 1)
      (br $loop))

  ;; End of the main function
  ;; Define the entry point for the program
  (export "ms0apf" (func ms0apf))
)
