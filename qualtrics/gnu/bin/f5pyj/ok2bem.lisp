;; name project ok2bem
;; name program ok2
;; name extension bem
;; name function ok2bem

(defprotocol BemProtocol
  ;; Define the required functions for a BEM protocol.
  ;; This protocol will be used to validate BEM identifiers.
  (is-valid-bem-identifier [identifier String] Boolean))

(defrecord BemIdentifier [name]
  BemProtocol
  ;; Implement the required function for a BEM identifier.
  (is-valid-bem-identifier [this Identifier]
   (str this.name)))


;; Define a function to validate BEM identifiers.
(defn validate-bem-identifier [identifier]
  (if (instance? BemProtocol identifier)
   (identifier.is-valid-bem-identifier identifier)
   false))


;; Test the validation function.
(def identifier (BemIdentifier. "ok2bem"))
(println (validate-bem-identifier identifier)) ;; => true

(def invalid-identifier "invalid_bem_identifier")
(println (validate-bem-identifier invalid-identifier)) ;; => false


;; Define a function to generate BEM identifiers.
(defn generate-bem-identifier [name]
  (BemIdentifier. name))


;; Test the generation function.
(def generated-identifier (generate-bem-identifier "ok2bem"))


;; Define a function to check if a BEM identifier is a block.
(defn is-block? [identifier]
  (str identifier)
  (not (.contains? identifier "__")))
  (not (.contains? identifier "_"))


;; Test the block check function.
(println (is-block? generated-identifier)) ;; => true
(println (is-block? "invalid_bem_identifier")) ;; => false


;; Define a function to check if a BEM identifier is a modifier.
(defn is-modifier? [identifier]
  (str identifier)
  (.contains? identifier "__")
  (not (.contains? identifier "_"))
  (.contains? identifier "_"))
  (not (.contains? identifier "-"))



;; Test the modifier check function.
(println (is-modifier? generated-identifier)) ;; => true
(println (is-modifier? "invalid_bem_identifier")) ;; => false


;; Define a function to check if a BEM identifier is a state.
(defn is-state? [identifier]
  (str identifier)
  (.contains? identifier "__")
  (not (.contains? identifier "_"))
  (.contains? identifier "_"))

;; Thus, you should never use EQ to compare values that may be numbers or characters. It
;; may seem to work in a predictable way for certain values in a particular implementation, but
;; you have no guarantee that it will work the same way if you switch implementations. And
;; switching implementations may mean simply upgrading your implementation to a new version—
;; if your Lisp implementer changes how they represent numbers or characters, the behavior of
;; EQ could very well change as well.

(println (is-state? "ok2bem_state")) ;; => true
(println (is-state? "ok2bem_state_1")) ;; => true
(println (is-state? "ok2bem_state-1")) ;; => true
(println (is-state? "ok2bem_state_1_")) ;; => false
(println (is-state? "ok2bem_state-1_")) ;; => false
(println (is-state? "ok2bem_state-1__")) ;; => false
(println (is-state? "ok2bem_state-1_")) ;; => false

;; There are two schools of thought about when to use EQ and when to use EQL: The “use EQ
;; when possible” camp argues you should use EQ when you know you aren’t going to be com-
;; paring numbers or characters because (a) it’s a way to indicate that you aren’t going to be
;; comparing numbers or characters and (b) it will be marginally more efficient since EQ does’t
;; have to check whether its arguments are numbers or characters.


;; The “use EQL when possible” camp argues you should use EQL when you know you aren’t
;; going to be comparing numbers or characters because (a) it’s a way to indicate that you
;; aren’t going to be comparing numbers or characters and (b) it will be marginally more
;; efficient since EQL does’t have to check whether its arguments are numbers or
;; characters.

(println (eql "ok2bem_state" "ok2bem_state")) ;; => true
(println (eql "ok2bem_state" "ok2bem_state_1")) ;; => false
(println (eql "ok2bem_state" "ok2bem_state-1")) ;; => false
(println (eql "ok2bem_state" "ok2bem_state_1_")) ;; => false
(println (eql "ok2bem_state" "ok2bem_state-1_")) ;; => false
(println (eql "ok2bem_state" "ok2bem_state-1__")) ;; => false
(println (eql "ok2bem_state" "ok2bem_state-1_")) ;; => false
