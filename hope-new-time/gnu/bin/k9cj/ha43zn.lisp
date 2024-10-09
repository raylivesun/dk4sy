;; name project ha43zn
;; name program ha43
;; name extension zn

(defpackage :ha43zn
  (:use :cl :alexandria :uiop :cffi)
  (:import-from :alexandria :symbol :string)
  (:import-from :uiop :quit :wait-for)
  (:import-from :cffi :foreign-declare :foreign-call))


(in-package :ha43zn)

;; Define the foreign function
(foreign-declare "ha43" :pointer
  "ha43"
  :string
  (list :string :string :string :string :string :string :string :string :string))


;; Define the function to call the foreign function
(defun call-ha43 (project program extension &rest args)
  (declare (type (vector string) args))
  (declare result (pointer :string))

  ;; Convert the arguments to C strings
  (let ((project-c (cffi:foreign-string project :coding :utf-8))
      (program-c (cffi:foreign-string program :coding :utf-8))
      (extension-c (cffi:foreign-string extension :coding :utf-8))
      (args-c (mapcar #'cffi:foreign-string args :coding :utf-8)))

    ;; Call the foreign function
    (cffi:with-foreign-object result :pointer :string :malloc :free
      (ha43 project-c program-c extension-c args-c))

    ;; Convert the result to a string and return it
    (string result)))

    ;; Example usage
    (let ((project "My Project")
          (program "My Program")
          (extension "zip"))
          (result (call-ha43 project program extension "arg1" "arg2" "arg3")))
          (format t "Result: ~a~%" result)