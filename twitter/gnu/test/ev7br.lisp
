;; name project ev7br
;; name program ev
;; name extension lisp
;; name describer 7br
;; name data 7
;; name unit 7

(in-package :vector)

;; logic server reference
(defclass vector ()
  ((x :initarg :x :reader x)
   (y :initarg :y :reader y)))

;; wallet handle values reference
(defgeneric + (arg &rest other-args)
  (:method ((arg number)) &rest other-args)
  (apply 'cl:+ arg other-args))

;; specifier the wallet handle
(defmethod + ((arg vector) &rest other-args
                                 (make-instance 'vector
                                  :x (apply 'cl:+ (x arg)
                                      (mapcar 'x other-args)
                                      :y (apply 'cl:+ (y arg)
                                          (mapcar 'y other-args))))))
(SB-INT:PARSE-LAMBDA-LIST ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE (QUOTE VECTOR) :X (APPLY # # # :Y #))) :CONTEXT DEFMETHOD :ACCEPT #<unavailable argument> :CONDITION-CLASS #<unavailable argumen..
                          Locals:
                          #:.DEFAULTING-TEMP. = DEFMETHOD
                          SB-C::ACCEPT = 310
                          SB-C::ARG = (MAKE-INSTANCE 'VECTOR :X (APPLY '+ (X ARG) (MAPCAR 'X OTHER-ARGS) :Y (APPLY '+ (Y ARG) (MAPCAR 'Y OTHER-ARGS))))
                          SB-C::AUX = NIL
                          SB-C::CONDITION-CLASS = SB-PCL::SPECIALIZED-LAMBDA-LIST-ERROR
                          SB-C::ENV = NIL
                          SB-C::INPUT = NIL
                          SB-C::KEYS = NIL
                          LIST = ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE 'VECTOR :X (APPLY '+ (X ARG) (MAPCAR 'X OTHER-ARGS) :Y (APPLY '+ # #))))
                          SB-C::MORE = NIL
                          SB-C::OPTIONAL = NIL
                          SB-C::REQUIRED = ((ARG VECTOR))
                          REST = (OTHER-ARGS)
                          SB-C::REST-BITS = 2
                          SB-C::SAVED-STATE = 0
                          SB-C::SEEN = 4
                          SB-C::SILENT = T
                          SB-C::STATE = 11
                          SB-C::TAIL = NIL
                          SB-C::WHOLE = NIL
(SB-PCL::PARSE-SPECIALIZED-LAMBDA-LIST ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE (QUOTE VECTOR) :X (APPLY # # # :Y #))))
                          Locals:
                          ARGLIST = ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE 'VECTOR :X (APPLY '+ (X ARG) (MAPCAR 'X OTHER-ARGS) :Y (APPLY '+ # #))))
                          2
(SB-C::CALL-WITH-CURRENT-SOURCE-FORM #<CLOSURE (LAMBDA NIL :IN SB-PCL::EXPAND-DEFMETHOD) {10036E3ACB}> ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE (QUOTE VECTOR) :X (APPLY # # # :Y #))))
                          Locals:
                          FORMS = (((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE 'VECTOR :X (APPLY '+ # # :Y #))))
                          THUNK = #<CLOSURE (LAMBDA () :IN SB-PCL::EXPAND-DEFMETHOD) {10036E3ACB}>
(SB-PCL::EXPAND-DEFMETHOD + #<STANDARD-GENERIC-FUNCTION {504B200B}> #<STANDARD-METHOD {100068B513}> NIL ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE (QUOTE VECTOR) :X (APPLY # # # :Y #))) NIL #<NULL-..
                          Locals:
                          ENV = #<NULL-LEXENV>
                          ENV#1 = #<NULL-LEXENV>
                          #:G39 = NIL
                          LAMBDA-LIST = ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE 'VECTOR :X (APPLY '+ (X ARG) (MAPCAR 'X OTHER-ARGS) :Y (APPLY '+ # #))))
                          NAME = +
                          PROTO-GF = #<STANDARD-GENERIC-FUNCTION {504B200B}>
                          PROTO-METHOD = #<STANDARD-METHOD {100068B513}>
                          QUALIFIERS = NIL
((FLET SB-IMPL::PERFORM-EXPANSION :IN MACROEXPAND-1) #<FUNCTION (MACRO-FUNCTION SB-PCL::%DEFMETHOD-EXPANDER) {52AD707B}> NIL)
                          Locals:
                          SB-IMPL::EXPANDER = #<FUNCTION (MACRO-FUNCTION SB-PCL::%DEFMETHOD-EXPANDER) {52AD707B}>
                          SB-IMPL::EXPANSION = NIL
                          SB-IMPL::EXPANSION-P = NIL
 (MACROEXPAND (SB-PCL::%DEFMETHOD-EXPANDER + NIL ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE # :X #)) NIL) #<NULL-LEXENV>)
                          Locals:
                          SB-IMPL::ENV = #<NULL-LEXENV>
                          SB-IMPL::EXPANDED = NIL
                          SB-KERNEL:FORM = (SB-PCL::%DEFMETHOD-EXPANDER + NIL ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE 'VECTOR :X (APPLY '+ # # :Y #))) NIL)

(SB-INT:SIMPLE-EVAL-IN-LEXENV (SB-PCL::%DEFMETHOD-EXPANDER + NIL ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE # :X #)) NIL) #<NULL-LEXENV>)
                         Locals:
                         SB-KERNEL:LEXENV = #<NULL-LEXENV>
                         SB-IMPL::ORIGINAL-EXP = (SB-PCL::%DEFMETHOD-EXPANDER + NIL ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE 'VECTOR :X (APPLY '+ # # :Y #))) NIL)
(SB-INT:SIMPLE-EVAL-IN-LEXENV (EVAL-WHEN (:EXECUTE) (SB-PCL::%DEFMETHOD-EXPANDER + NIL (# &REST OTHER-ARGS #) NIL)) #<NULL-LEXENV>)
                        Locals:
                        SB-KERNEL:LEXENV = #<NULL-LEXENV>
                        SB-IMPL::ORIGINAL-EXP = (EVAL-WHEN (:EXECUTE) (SB-PCL::%DEFMETHOD-EXPANDER + NIL ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE 'VECTOR :X #)) NIL))
(SB-INT:SIMPLE-EVAL-IN-LEXENV (DEFMETHOD + ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE # :X #))) #<NULL-LEXENV)                                                                 Locals:
                        SB-KERNEL:LEXENV = #<NULL-LEXENV>
                        SB-IMPL::ORIGINAL-EXP = (DEFMETHOD + ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE 'VECTOR :X (APPLY '+ # # :Y #))))
(EVAL (DEFMETHOD + ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE # :X #))))
                        Locals:
                        SB-IMPL::ORIGINAL-EXP = (DEFMETHOD + ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE 'VECTOR :X (APPLY '+ # # :Y #))))
(SB-INT:PARSE-LAMBDA-LIST ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE (QUOTE VECTOR) :X (APPLY # # # :Y #))) :CONTEXT DEFMETHOD :ACCEPT #<UNAVAILABLE ARGUMENT> :CONDITION-CLASS #<UNAVAILABLE ARGUMEN..
                        LOCALS:
                        #:.DEFAULTING-TEMP. = DEFMETHOD
                        SB-C::ACCEPT = 310
                        SB-C::ARG = (MAKE-INSTANCE 'VECTOR :X (APPLY '+ (X ARG) (MAPCAR 'X OTHER-ARGS) :Y (APPLY '+ (Y ARG) (MAPCAR 'Y OTHER-ARGS))))
                        SB-C::AUX = NIL
                        SB-C::CONDITION-CLASS = SB-PCL::SPECIALIZED-LAMBDA-LIST-ERROR
                        SB-C::ENV = NIL
                        SB-C::INPUT = NIL
                        SB-C::KEYS = NIL
                        LIST = ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE 'VECTOR :X (APPLY '+ (X ARG) (MAPCAR 'X OTHER-ARGS) :Y (APPLY '+ # #))))
                        SB-C::MORE = NIL
                        SB-C::OPTIONAL = NIL
                        SB-C::REQUIRED = ((ARG VECTOR))
                        REST = (OTHER-ARGS)
                        SB-C::REST-BITS = 2
                        SB-C::SAVED-STATE = 79
                        SB-C::SEEN = 4
                        SB-C::SILENT = T
                        SB-C::STATE = 79
                        SB-C::TAIL = NIL
                        SB-C::WHOLE = NIL
(SB-PCL::PARSE-SPECIALIZED-LAMBDA-LIST ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE (QUOTE VECTOR) :X (APPLY # # # :Y #))))
                        LOCALS:
                        ARGLIST = ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE 'VECTOR :X (APPLY '+ (X ARG) (MAPCAR 'X OTHER-ARGS) :Y (APPLY '+ # #))))
(SB-C::CALL-WITH-CURRENT-SOURCE-FORM #<CLOSURE (LAMBDA NIL :IN SB-PCL::EXPAND-DEFMETHOD) {10036E3ACB}> ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE (QUOTE VECTOR) :X (APPLY # # # :Y #))))
                        LOCALS:
                        FORMS = (((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE 'VECTOR :X (APPLY '+ # # :Y #))))
                        THUNK = #<CLOSURE (LAMBDA () :IN SB-PCL::EXPAND-DEFMETHOD) {10036E3ACB}>
(SB-PCL::EXPAND-DEFMETHOD + #<STANDARD-GENERIC-FUNCTION {504B200B}> #<STANDARD-METHOD {100068B513}> NIL ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE (QUOTE VECTOR) :X (APPLY # # # :Y #))) NIL #<NULL-..
                        LOCALS:
                          ENV = #<NULL-LEXENV>
                          ENV#1 = #<NULL-LEXENV>
                          #:G39 = NIL
                          LAMBDA-LIST = ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE 'VECTOR :X (APPLY '+ (X ARG) (MAPCAR 'X OTHER-ARGS) :Y (APPLY '+ # #))))
                          NAME = +
                          PROTO-GF = #<STANDARD-GENERIC-FUNCTION {504B200B}>
                          PROTO-METHOD = #<STANDARD-METHOD {100068B513}>                                                                                                            QUALIFIERS = NIL
((FLET SB-IMPL::PERFORM-EXPANSION :IN MACROEXPAND-1) #<FUNCTION (MACRO-FUNCTION SB-PCL::%DEFMETHOD-EXPANDER) {52AD707B}> NIL)
                          LOCALS:
                          SB-IMPL::EXPANDER = #<FUNCTION (MACRO-FUNCTION SB-PCL::%DEFMETHOD-EXPANDER) {52AD707B}>
                          SB-IMPL::EXPANSION = NIL
                          SB-IMPL::EXPANSION-P = NIL
(MACROEXPAND (SB-PCL::%DEFMETHOD-EXPANDER + NIL ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE # :X #)) NIL) #<NULL-LEXENV>)
                          LOCALS:
                          SB-IMPL::ENV = #<NULL-LEXENV>
                          SB-IMPL::EXPANDED = NIL
                          SB-KERNEL:FORM = (SB-PCL::%DEFMETHOD-EXPANDER + NIL ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE 'VECTOR :X (APPLY '+ # # :Y #))) NIL)
(SB-INT:SIMPLE-EVAL-IN-LEXENV (SB-PCL::%DEFMETHOD-EXPANDER + NIL ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE # :X #)) NIL) #<NULL-LEXENV>)
                          LOCALS:
                          SB-KERNEL:LEXENV = #<NULL-LEXENV>
                          SB-IMPL::ORIGINAL-EXP = (SB-PCL::%DEFMETHOD-EXPANDER + NIL ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE 'VECTOR :X (APPLY '+ # # :Y #))) NIL)
(SB-INT:SIMPLE-EVAL-IN-LEXENV (EVAL-WHEN (:EXECUTE) (SB-PCL::%DEFMETHOD-EXPANDER + NIL (# &REST OTHER-ARGS #) NIL)) #<NULL-LEXENV>)
                         LOCALS:
                         SB-KERNEL:LEXENV = #<NULL-LEXENV>
                         SB-IMPL::ORIGINAL-EXP = (EVAL-WHEN (:EXECUTE) (SB-PCL::%DEFMETHOD-EXPANDER + NIL ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE 'VECTOR :X #)) NIL))
(SB-INT:SIMPLE-EVAL-IN-LEXENV (DEFMETHOD + ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE # :X #))) #<NULL-LEXENV>)
                         LOCALS:
                         SB-KERNEL:LEXENV = #<NULL-LEXENV>
                         SB-IMPL::ORIGINAL-EXP = (DEFMETHOD + ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE 'VECTOR :X (APPLY '+ # # :Y #))))
(EVAL (DEFMETHOD + ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE # :X #))))
                         LOCALS:
                         SB-IMPL::ORIGINAL-EXP = (DEFMETHOD + ((ARG VECTOR) &REST OTHER-ARGS (MAKE-INSTANCE 'VECTOR :X (APPLY))))                         (SWANK::EVAL-REGION "(DEFMETHOD + ((ARG VECTOR) &REST OTHER-ARGS ..)
      LOCALS:
        STREAM = #<SB-IMPL::STRING-INPUT-STREAM {10036E2E33}>
        STRING = "(DEFMETHOD + ((ARG VECTOR) &REST OTHER-ARGS\N                                 (MAKE-INSTANCE 'VECTOR\N                                  :X (APPLY 'CL:+ (X ARG)\N                                      ..
                                                                                                                                                          ((LAMBDA NIL :IN SWANK-REPL::REPL-EVAL))
     [NO LOCALS]
(SWANK-REPL::TRACK-PACKAGE #<CLOSURE (LAMBDA NIL :IN SWANK-REPL::REPL-EVAL) {10036E2E1B}>)
     LOCALS:
     FUN = #<CLOSURE (LAMBDA () :IN SWANK-REPL::REPL-EVAL) {10036E2E1B}>))                                                                                     P = #<PACKAGE "CMD">
(SWANK::CALL-WITH-RETRY-RESTART "Retry SLIME REPL evaluation request." #<CLOSURE (LAMBDA NIL :IN SWANK-REPL::REPL-EVAL) {10036E2DBB}>)
    Locals:
    MSG = "Retry SLIME REPL evaluation request."
    THUNK = #<CLOSURE (LAMBDA () :IN SWANK-REPL::REPL-EVAL) {10036E2DBB}>
(SWANK::CALL-WITH-BUFFER-SYNTAX NIL #<CLOSURE (LAMBDA NIL :IN SWANK-REPL::REPL-EVAL) {10036E2D9B}>)
    Locals:
    FUN = #<CLOSURE (LAMBDA () :IN SWANK-REPL::REPL-EVAL) {10036E2D9B}>
    PACKAGE = NIL
(SWANK-REPL::REPL-EVAL "(defmethod + ((arg vector) &rest other-args ..)
      Locals:
      STRING = "(defmethod + ((arg vector) &rest other-args\n                                 (make-instance 'vector\n                                  :x (apply 'cl:+ (x arg)\n                                      ..
 (SB-INT:SIMPLE-EVAL-IN-LEXENV (SWANK-REPL:LISTENER-EVAL "(defmethod + ((arg vector) &rest other-args ..)
      Locals:
      SB-KERNEL:LEXENV = #<NULL-LEXENV>
      SB-IMPL::ORIGINAL-EXP = (SWANK-REPL:LISTENER-EVAL ..)
(EVAL (SWANK-REPL:LISTENER-EVAL "(defmethod + ((arg vector) &rest other-args ..)
                                   Locals:
                                   SB-IMPL::ORIGINAL-EXP = (SWANK-REPL:LISTENER-EVAL ..)
(SWANK:EVAL-FOR-EMACS (SWANK-REPL:LISTENER-EVAL "(defmethod + ((arg vector) &rest other-args ..)
      Locals:
      BUFFER-PACKAGE = "CMD"
      CONDITION = #<SB-PCL::SPECIALIZED-LAMBDA-LIST-ERROR "expected lambda list keyword at ~S in: ~S" {10036E3BA3}>
      FORM = (SWANK-REPL:LISTENER-EVAL ..)
      ID = 64
      OK = NIL
      RESULT = NIL
(SWANK::PROCESS-REQUESTS NIL)
      Locals:
      TIMEOUT = NIL
((LAMBDA NIL :IN SWANK::HANDLE-REQUESTS))
      [No Locals]
((LAMBDA NIL :IN SWANK::HANDLE-REQUESTS))
      Locals:
      CONNECTION = #<SWANK::MULTITHREADED-CONNECTION {1004914733}>
      TIMEOUT = NIL
(SWANK/SBCL::CALL-WITH-BREAK-HOOK #<FUNCTION SWANK:SWANK-DEBUGGER-HOOK> #<CLOSURE (LAMBDA NIL :IN SWANK::HANDLE-REQUESTS) {10036E267B}>)
      Locals:
      CONTINUATION = #<CLOSURE (LAMBDA () :IN SWANK::HANDLE-REQUESTS) {10036E267B}>
      HOOK = #<FUNCTION SWANK:SWANK-DEBUGGER-HOOK>
((FLET SWANK/BACKEND:CALL-WITH-DEBUGGER-HOOK :IN "/home/admin/app/portacle/all/emacsd/elpa/slime-20191224.2328/swank/sbcl.lisp") #<FUNCTION SWANK:SWANK-DEBUGGER-HOOK> #<CLOSURE (LAMBDA NIL :IN SWANK::..
      Locals:
      SWANK/SBCL::FUN = #<CLOSURE (LAMBDA () :IN SWANK::HANDLE-REQUESTS) {10036E267B}>
      SWANK/SBCL::HOOK = #<FUNCTION SWANK:SWANK-DEBUGGER-HOOK>
(SWANK::CALL-WITH-BINDINGS ((*STANDARD-INPUT* . #1=#<SWANK/GRAY::SLIME-INPUT-STREAM {1002B71913}>) (*STANDARD-OUTPUT* . #2=#<SWANK/GRAY::SLIME-OUTPUT-STREAM {1002C57CB3}>) (*TRACE-OUTPUT* . #2#) (*ERR..
      Locals:
      ALIST = ((*STANDARD-INPUT* . #<SWANK/GRAY::SLIME-INPUT-STREAM {1002B71913}>) (*STANDARD-OUTPUT* . #<SWANK/GRAY::SLIME-OUTPUT-STREAM {1002C57CB3}>) ..)
      FUN = #<CLOSURE (LAMBDA () :IN SWANK::HANDLE-REQUESTS) {10036E269B}>
(SWANK::HANDLE-REQUESTS #<SWANK::MULTITHREADED-CONNECTION {1004914733}> NIL)
      Locals:
      CONNECTION = #<SWANK::MULTITHREADED-CONNECTION {1004914733}>
      TIMEOUT = NIL
((FLET SB-UNIX::BODY :IN SB-THREAD::NEW-LISP-THREAD-TRAMPOLINE))
      [No Locals]
      Catch-tags:
      SB-THREAD::%RETURN-FROM-THREAD
((FLET "WITHOUT-INTERRUPTS-BODY-4" :IN SB-THREAD::NEW-LISP-THREAD-TRAMPOLINE))
      Locals:
      SB-THREAD:THREAD = #<SB-THREAD:THREAD "new-repl-thread" RUNNING {10036D1FF3}>
((FLET SB-THREAD::WITH-MUTEX-THUNK :IN SB-THREAD::NEW-LISP-THREAD-TRAMPOLINE))
      [No Locals]
      Catch-tags:
        SB-THREAD::%ABORT-THREAD
        SB-IMPL::%END-OF-THE-WORLD
        SB-INT:TOPLEVEL-CATCHER
((FLET "WITHOUT-INTERRUPTS-BODY-1" :IN SB-THREAD::CALL-WITH-MUTEX))
      Locals:
      GOT-IT = T
      MUTEX = #<SB-THREAD:MUTEX "thread result lock" owner: #<SB-THREAD:THREAD "new-repl-thread" RUNNING {10036D1FF3}>>
(SB-THREAD::CALL-WITH-MUTEX #<CLOSURE (FLET SB-THREAD::WITH-MUTEX-THUNK :IN SB-THREAD::NEW-LISP-THREAD-TRAMPOLINE) {7D5E18FFECDB}> #<SB-THREAD:MUTEX "thread result lock" owner: #<SB-THREAD:THREAD "new..
 Locals:
 GOT-IT = T
 MUTEX = #<SB-THREAD:MUTEX "thread result lock" owner: #<SB-THREAD:THREAD "new-repl-thread" RUNNING {10036D1FF3}>>
 SB-C::THING = #<CLOSURE (FLET SB-THREAD::WITH-MUTEX-THUNK :IN SB-THREAD::NEW-LISP-THREAD-TRAMPOLINE) {7D5E18FFECDB}>
 TIMEOUT = NIL
 VALUE = NIL
 WAITP = T
 (SB-THREAD::NEW-LISP-THREAD-TRAMPOLINE #<SB-THREAD:THREAD "new-repl-thread" RUNNING {10036D1FF3}> NIL #<CLOSURE (LAMBDA NIL :IN SWANK-REPL::SPAWN-REPL-THREAD) {10036D1F9B}> NIL)
 Locals:
 ARGUMENTS = NIL
 REAL-FUNCTION = #<CLOSURE (LAMBDA () :IN SWANK-REPL::SPAWN-REPL-THREAD) {10036D1F9B}>
 SETUP-SEM = NIL
 THREAD = #<SB-THREAD:THREAD "new-repl-thread" RUNNING {10036D1FF3}>
 32: ("foreign function: call_into_lisp")
 [No Locals]
 ("foreign function: new_thread_trampoline")
 [No Locals]

                                                       
