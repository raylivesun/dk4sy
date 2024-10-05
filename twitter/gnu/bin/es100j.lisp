;; name project es100j
;; name program es
;; name extension lisp
;; name describer j
;; name data 100068b513
;; name unit 100068b513

;; writing the class
(+ 3 4 5)
;; logic write template
(+ (make-instance 'vector :x 3 :y 4)
   (make-instance 'vector :x 5 :y 6)
   (make-instance 'vector :x 7 :y 8))

;; logic write template static vector
(+ #<vector {1004291743}> #<vector {1004291FB3}> {10042929F3}>)
Locals:
       sb-debug::more = (#<vector {1004291743}> #<vector {1004291FB3}> {10042929F3}>)
(sb-int:simple-eval-in-lexenv (+ (make-instance (quote vector) :x 3 :y 4)
                                 (make-instance (quote vector) :x 5 :y 6)
                                 (make-instance (quote vector) :x 7 :y 8)))
Locals:
       sb-kernel:lexenv = #<null-lexenv>
sb-impl::original-exp = (+ (make-instance 'vector :x 3 :y 4) (make-instance 'vector :x 5 :y 6) (make-instance 'vector :x 7 :y 8))
(eval (+ (make-instance (quote vector) :x 3 :y 4) (make-instance (quote vector) :x 5 :y 6) (make-instance (quote vector) :x 7 :y 8)))
Locals:
       sb-impl::original = (+ (make-instance 'vector :x 3 :y 4) (make-instance 'vector :x 5 :y 6) (make-instance 'vector :x 7 :y 8))
(swank::eval-region"(+ (make-instance 'vector :x 3 :y 4) ..)")
Locals:
       stream = #<sb-impl::string-input-stream {1004287A63}>
       string = "(+ (make-instance 'vector :x 3 :y 4)\n (make-instance 'vector :x 5 :y 6)\n (make-instance 'vector :x 7 :y 8))\n"
((lambda nil :IN swank-repl::repl-eval))
[No Locals]
(swank-repl::track-package #<closure (lambda nil :IN swank-repl::repl-eval) {1004287A4B}>)
Locals:
       fun = #<closure (lambda () :IN swank-repl::repl-eval) {1004287A4B}>
       p = #<package "CMD">
(swank::call-with-retry-restart "Retry Slime repl evaluation request." #<closure (lambda nil :IN swank-repl::repl-eval) {10042879EB}>)
Locals:
       msg = "Retry Slime Repl evaluation request."
       thunk = "#<closure (lambda () :IN swank-repl::repl-eval) {100068b513}>"
(swank::call-with-buffer-syntax nil #<closure (lambda nil :in swank-repl::repl-eval) {10042879CB}>)
Locals:
      fun = #<closure (lambda () :in swank-repl::repl-eval) {10042879CB}>
      package = nil
(swank-repl::repl-eval "(+ (make-instance 'vector :x 3 :y 4) ..)")
locals:
      string = "(+ (make-instance 'vector :x 3 :y 4)\n (make-instance 'vector :x 5 :y 6)\n (make-instance 'vector :x 7 :y 8)\n"
(swank-repl::call-with-compilation-hooks "Restry Slime REPL evaluation request." #<closure (lambda nil :in swank-repl::repl-eval) {10042879EB}>)
locals:
      msg = "Restry Slime REPL evaluation request."
      thunk = #<closure (lambda () :in swank-repl::repl-eval) {10042879EB}>
(swank::call-with-bindings nil #<closure (lambda nil :in swank-repl::repl-eval) {10042879CB}>)
Locals:
     fun = #<closure (lambda () :in swank-repl::repl-eval) {10042879CB}>
     package = nil
(swank-repl::track-package #<closure (lambda nil :in swank-repl::repl-eval) {1004287A4B}>)
locals:
      string = "(+ (make-instance 'vector :x 3 :y 4)\n (make-instance 'vector :x 5 :y 6)\n (make-instance 'vector :x 7 :y 8))\n"
(swank-repl::repl-eval "(+ (make-instance 'vector :x 3 :y 4) ..)")
Locals:
       sb-kernel:lexenv = #<null-lexenv>
       sb-impl::original-exp = (swank-repl:listener-eval "(+ (make-instance 'vector :x 3 :y 4)\n (make-instance 'vector :x 5 :y 6)\n (make-instance 'vector :x 7 :y 8)")
(eval (swank-repl:listener-eval "(+ (make-instance 'vector :x 3 :y 4) ..)"))
Locals:
         sb-impl::original-exp = (swank-repl:listener-eval "(+ (make-instance 'vector :x 3 :y 4)\n (make-instance 'vector :x 5 :y 6)\n (make-instance 'vector :x 7 :y 8")
(swank-repl::repl-eval "(+ (make-instance 'vector :x 3 :y 4)..)")
Locals:
       string = "(+ (make-instance 'vector :x 3 :y 4)..)"
(sb-int:simple-eval-in-lexenv (swank-repl:listener-eval "(+ (make-instance 'vector :x 3 :y 4) ..)"))
Locals:
       sb-kernerl:lexenv = #<null-lexenv>
       sb-impl::original-exp = (swank-repl:listener-eval "(+ (make-instance 'vector :x 3 :y 4)\n (make-instance 'vector :x 5 :y 6)\n (make-instance 'vector :x 7 :y 8) ..)")
(eval (swank-repl::listener-eval "(+ (make-instance 'vector :x 3 :y 4) ..)"))
Locals:
       sb-impl::original-exp = (swank-repl:listener-eval "(+ (make-instance 'vector :x 3 :y 4)\n (make-instance 'vector :x 5 :y 6)\n (make-instance 'vector x: 7 :y 8) ..)")
(swank:eval-for-emacs (swank-repl:listener-eval "(+ (make-instance 'vector :x 3 :y 4) ..)"))
Locals:
        buffer-package = "bablu"
        condition = #<type-error expected-type: number datum: #<vector {1004291743}>>
        from = (swank-repl:listener-eval "(+ (make-instance 'vector :x 3 :y 4)\n (make-instance 'vector :x 5 :y 6)\n (make-instance 'vector :x 7 :y 8))\n")        id = 129
        ok = nil
        result = nil
(swank::process-requests nil)
Locals:
       timeout = nil
((lambda nil :in swank::handle-requests))
[No Locals]
((lambda nil :in swank::handle-requests))
Locals:
       connection = #<swank::multithreaded-connection {1004914733}>
       timeout = nil
(swank/sblc::call-with-break-hook #<function swank:swank-debugger-hook> #<closure (lambda nil :in swank::handle-requests) {10042800CB}>)
Locals:
       continuation = #<closure (lambda () :in swank::handle-requests) {10042800CB}>
       hook = #<function swank:swank-debugger-hook>
((flet swank/backend:call-with-debugger-hook :in "/home/admin/app/portacle/all/emacsd/elpa/slime-20191224.2328/swank/sbcl.lisp") #<function swank:swank-debugger-hook>)
Locals:
       swank/sbcl::fun = #<closure (lambda () :in swank::handle-requests) {10042800CB}>
       swank/sbcl::hook = #<function swank:swank-debugger-hook>
(swank::call-with-bindings ((*standard-input* . #1=#<swank/gray::slime-input-stream {1002B71913}>) (*standard-output* . #2=#<swank/gray::slime-output-stream>)))
Locals:
        alist = ((*standard-input* . #<swank/gray::slime-input-stream {1002B71913}> (*standard-output* . #<swank/gray::slime-output-stream {1002C57CB3}>)..))
        fun =  #<closure (lambda () :in swank::handle-requests {10042800EB}>)
(swank::handle-requests #<swank::multithreaded-connection {1004914733}> nil)
(locally (connection #<swank::multithreaded-connection {1004914733}>)
         (timeout nil))
((flet sb-unix::body :in sb-thread::new-count trace))
[No Locals]
(catch tagbody:
  sb-thread::%return-from-thread)
((flet "Without-interrupts-body-4" :in sb-thread::new-lisp-thread-trampoline))
(locally #<sb-thread:thread "new-repl-thread" running {1003C3C8D3}>)
[No Locals]
(catch tagbody:
  (sb-thread::%abort-thread)
  (sb-impl::%end-of-the-world)
  (sb-int:toplevel-catcher))
((flet "without-interrupts-body-4" :in sb-thread::call-with-mutex))
(locally (got-it t (mutex #<sb-thread:mutex "thread result lock owner: #<sb-thread:thread "new-repl-thread" running {100068b513}>>")))
(sb-thread::call-with-mutex #closure (flet sb-thread::with-mutex-thunk :in sb-thread::new-lisp-thread-trampoline) {7D5E189FECDB}> #<sb-thread:mutex t "">)
(locally (got-it t (mutex #<sb-thread:mutex "thread result lock owner: #<sb-thread:thread "new-repl-thread" running {100068b513}>>"))
  (sb-c::thing #<closure (flet sb-thread::with-mutex-thunk :in sb-thread::new-lisp-thread-trampoline) {7D5E189FECDB}>)
  (timeout nil)
  (value nil)
  (waitp nil))
(sb-thread::new-lisp-thread-trampoline #<sb-thread::thread "new-repl-thread" running {1003C3C8D3}> nil #closure (lambda nil :in swank-repl::spawn-repl-thread) {1003C3C87B}> nil)
(locally (got-it t (mutex #<sb-thread:mutex "thread result lock" owner: #<sb-thread:thread "new-repl-thread" running {1003C3C8D3}))
  (sb-c::thing #<closure (flet sb-thread::with-mutex-thunk :in sb-thread::new-lisp-thread-trampoline) {7D5E189FECDB}>)
  (timeout nil)
  (value nil)
  (waitp nil))
(sb-thread::new-lisp-thread-trampoline #<sb-thread:thread "new-repl-thread" running {1003C3C8D3}> nil #<closure (lambda nil :in swank-repl::spawn-repl-thread) {1003C3C87B}> nil)
(locally (arguments nil)
  (real #<closure (lambda () :in swank-repl::spawn-repl-thread) {1003C3C87B}>)
  (setup-sem nil)
  (thread #<sb-thread:thread "new-repl-thread" running {1003C3C8D3}>))
("foreign function: call initarg lisp")
("foreign function: new thread trampoline")
