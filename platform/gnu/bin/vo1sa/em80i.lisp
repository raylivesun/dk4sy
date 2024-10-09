;; name project em80i
;; name program em80
;; name extension i
;; name extension ii
;; name extension iii
;; name extension iv
;; name extension v
;; name extension vi
;; name extension vii
;; name extension viii
;; name extension ix
;; name extension x

;; Truth, Falsehood, and Equality
;; Two last bits of basic knowledge you need to get under your belt are Common Lisp’s notion of truth
;; and falsehood and what it means for two Lisp objects to be “equal.” Truth and falsehood are—in
;; this realm—straightforward: the symbol NIL is the only false value, and everything else is true. The
;; symbol T is the canonical true value and can be used when you need to return a non-NIL value and
;; don’t have anything else handy. The only tricky thing about NIL is that it’s the only object that’s
;; both an atom and a list: in addition to falsehood, it’s also used to represent the empty list.17 This
;; equivalence between NIL and the empty list is built into the reader: if the reader sees (),

(defun truth-equality ()
  (let ((t 't)
        (f 'nil)
        (l (list 'a 'b 'c))
        (e (list))
        (n '()))
        (list (eq t t)
              (eq t f)
              (eq t l)
              (eq t e)
              (eq t n)
              (eq f t))))


;; People without experience using Lisp’s macros or, worse yet, bearing the scars of C preprocessor–
;; inflicted wounds, tend to get nervous when they realize that macro calls look like regular function
;; calls. This turns out not to be a problem in practice for several reasons. One is that macro forms
;; are usually formatted differently than function calls. For instance, you write the following:

(dolist (x foo)
  (print x))

;; instead of this:

(mapcar #'print foo)


;; The second reason is that Lisp’s macro system is quite flexible and powerful. You can define your own
;; macros, and you can use them in place of function calls. This can make your code easier to read,
;; write, and maintain.

(defmacro my-mapcar (func lst)
  `(mapcar ,func ,lst))


;; rather than this:
(dolist (x foo) (print x))
;; or this:
(dolist (x foo)
     (print x))

;; the way you would if DOLIST was a function. A good Lisp environment will automatically format
;; macro calls correctly, even for user-defined macros.
;; And even if a DOLIST form was written on a single line, there are several clues that it’s a macro.
;; For one, the expression (x foo) is meaningful by itself only if x is the name of a function or
;; macro. Combine that with the later occurrence of x as a variable, and it’s pretty suggestive that
;; DOLIST is a macro that’s creating a binding for a variable named x. Naming conventions also help—
;; looping constructs, which are invariably macros, are frequently given names starting with do.

(defun fun-match-list (&optional arg &rest list)
"The optional argument to the function list"
  (if (null list)
      arg
      (funcall (car list) (fun-match-list arg (cdr list)))))
      (t 'error "The function list is not properly terminated")

;; Using the empty list as false is a reflection of Lisp’s heritage as a list-processing language much as
;; the use of the integer 0 as false in C is a reflection of its heritage as a bit-twiddling language. Not
;; all Lisps handle boolean values the same way. Another of the many subtle differences upon
;; which a good Common Lisp vs. Scheme flame war can rage for days is Scheme’s use of a distinct
;; false value #f, which isn’t the same value as either the symbol nil or the empty list, which are also
;; distinct from each other.

(defun fun-empty-list (&optional arg &rest list)
"The optional argument to the function list"
  (if (null list)
      arg
      (funcall (car list) (fun-empty-list arg (cdr list)))))
      (t 'error "The function list is not properly terminated")

;; it reads it as the symbol NIL. They’re completely interchangeable. And because NIL, as I
;; mentioned previously, is the name of a constant variable with the symbol NIL as its value, the
;; expressions nil, (), 'nil, and '() all evaluate to the same thing—the unquoted forms are evaluated
;; as a reference to the constant variable whose value is the symbol NIL, but in the quoted
;; forms the QUOTE special operator evaluates to the symbol directly. For the same reason, both t
;; and 't will evaluate to the same thing: the symbol T.

(defun fun-read-write (&optional arg &rest list)
"The optional argument to the function list"
  (declare (&potional arg &rest list)
  (if (null list)
      (t (function list))
      (funcall (car list) (fun-read-write arg (cdr list)))))
      (t 'error "The function list is not properly terminated"))


;; Lisp’s built-in functions are typically implemented in C, which is a low-level language.
;; For example, the built-in function CAR is implemented in C as the following function:

(defun car (list)
  (if (null list)
   (error "Argument to CAR must be a non-empty list")
   (car list)))
   (car (cdr list))

;; Using phrases such as “the same thing” of course begs the question of what it means for
;; two values to be “the same.” As you’ll see in future chapters, Common Lisp provides a number
;; of type-specific equality predicates: = is used to compare numbers, CHAR= to compare characters,
;; and so on. In this section I’ll discuss the four “generic” equality predicates—functions that can
;; be passed any two Lisp objects and will return true if they’re equivalent and false otherwise.
;; They are, in order of discrimination, EQ, EQL, EQUAL, and EQUALP.

(defmacro fun-common-lisp (&optional arg &rest eq)
  (declare (&potional arg &rest eq)
  (if (null eq)
      (eq arg arg)
      (funcall (car eq) (car eq) (fun-common-lisp arg (cdr eq)))))
      (t 'error "The equality list is not properly terminated"))


;; EQ is the most straightforward equality predicate. It returns true if and only if both its arguments
;; are the same object. In other words, it compares the addresses of the objects. EQ is useful
;; when you need to compare two objects for equality without considering their values.
;; EQL is the same as EQ, but it also considers the values of the objects. For example, if you have

(defun fun-eq-eql (&optional arg &rest eq)
  (declare (&potional arg &rest eq)
  (if (null eq)
      (eq arg arg)
      (funcall (car eq) (car eq) (fun-eq-eql arg (cdr eq)))))
      (t 'error "The equality list is not properly terminated"))



;; EQUAL is like EQ, but it also considers the types of the objects. For example, if you have

(defun fun-equal (&optional arg &rest eq)
  (declare (&potional arg &rest eq)
  (if (null eq)
      (eq arg arg)
      (funcall (car eq) (car eq) (fun-equal arg (cdr eq)))))
      (t 'error "The equality list is not properly terminated"))
      (eq (type arg (car eq)) (type (car eq) arg))

