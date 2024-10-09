;; name project ut4el
;; name program ut4
;; name extension el
;; name description "UT4EL - Unified Text Editor for Linux"

;; dependencies
(use-package god-leader)
(use-package god-magics)
(use-package god-escape)
(use-package god-text-obj-line)
(use-package god-text-obj-sentence)
(use-package god-text-obj-paragraph)
(use-package god-text-obj-word)
(use-package god-text-obj-region)
(use-package god-text-obj-function)
(use-package god-text-obj-heading)
(use-package god-text-obj-table)
(use-package god-text-obj-tag)
(use-package god-text-obj-comment)
(use-package god-text-obj-json)
(use-package god-text-obj-markdown)
(use-package god-text-obj-paren)
(use-package god-text-obj-quote)
(use-package god-text-obj-tab)
(use-package god-text-obj-xml)
(use-package god-text-obj-yaml)

;; keybindings
(god-leader/define-key god-normal-state "F1" 'god-find-next-string)
(god-leader/define-key god-normal-state "F2" 'god-find-previous-string)
(god-leader/define-key god-normal-state "F3" 'god-find-next-string-backward)
(god-leader/define-key god-normal-state "F4" 'god-find-previous-string-backward)
(god-leader/define-key god-normal-state "F5" 'god-search-forward)
(god-leader/define-key god-normal-state "F6" 'god-search-backward)
(god-leader/define-key god-normal-state "F7" 'god-next-buffer)
(god-leader/define-key god-normal-state "F8" 'god-previous-buffer)
(god-leader/define-key god-normal-state "F9" 'god-open-line-below)
(god-leader/define-key god-normal-state "F10" 'god-open-line-above)
(god-leader/define-key god-normal-state "F11" 'god-open-line-above-and-switch-to-it)
(god-leader/define-key god-normal-state "F12" 'god-open-line-below-and-switch-to-it)
(god-leader/define-key god-normal-state "C-n" 'god-next-line)
(god-leader/define-key god-normal-state "C-p" 'god-previous-line)
(god-leader/define-key god-normal-state "M-n" 'god-next-paragraph)
(god-leader/define-key god-normal-state "M-p" 'god-previous-paragraph)
(god-leader/define-key god-normal-state "C-w" 'god-delete-backward-word)
(god-leader/define-key god-normal-state "C-k" 'god-kill-line)

;; customize keybindings
(god-magics/define-key god-normal-state "C-s" 'god-magics-add-round)
(god-magics/define-key god-normal-state "C-S" 'god-magics-add-square)
(god-magics/define-key god-normal-state "C-d" 'god-magics-add-double-quote)
(god-escape/define-key god-normal-state "C-M-s" 'god-escape-insert-string)
(god-escape/define-key god-normal-state "C-M-S" 'god-escape-insert-string)



;; enable god-mode
(god-mode 1)

;; enable god-leader-key
(god-leader-mode 1)

;; enable god-magics-mode
(god-magics-mode 1)

;; enable god-escape-mode
(god-escape-mode 1)

;; enable god-text-obj-line-mode
(god-text-obj-line-mode 1)

;; enable god-text-obj-sentence-mode
(god-text-obj-sentence-mode 1)

;; enable god-text-obj-paragraph-mode
(god-text-obj-paragraph-mode 1)

;; enable god-text-obj-word-mode
(god-text-obj-word-mode 1)

;; enable god-text-obj-region-mode
(god-text-obj-region-mode 1)

;; enable god-text-obj-function-mode
(god-text-obj-function-mode 1)

;; enable god-text-obj-heading-mode
(god-text-obj-heading-mode 1)

;; enable god-text-obj-table-mode
(god-text-obj-table-mode 1)

;; enable god-text-obj-tag-mode
(god-text-obj-tag-mode 1)

;; enable god-text-obj-comment-mode
(god-text-obj-comment-mode 1)

;; enable god-text-obj-json-mode
(god-text-obj-json-mode 1)

;; enable god-text-obj-markdown-mode
(god-text-obj-markdown-mode 1)

;; enable god-text-obj-paren-mode
(god-text-obj-paren-mode 1)

;; enable god-text-obj-quote-mode
(god-text-obj-quote-mode 1)

;; enable god-text-obj-tab-mode
(god-text-obj-tab-mode 1)

;; enable god-text-obj-xml-mode
(god-text-obj-xml-mode 1)

;; enable god-text-obj-yaml-mode
(god-text-obj-yaml-mode 1)


;; customize face
(set-face-attribute 'god-search-highlight nil :background "light gray")
(set-face-attribute 'god-search-highlight-current nil :background "dark gray")
(set-face-attribute 'god-magics-highlight nil :background "light gray")
(set-face-attribute 'god-magics-highlight-current nil :background "dark gray")


;; customize god-magics-pairs
(god-magics-define-pair 'round '()' '()' '()' '() 'round)
(god-magics-define-pair 'square '()' '()' '()' '() 'square)
(god-magics-define-pair 'double-quote '()' '()' '()' '() 'double-quote)
(god-magics-define-pair 'angle '()' '()' '()' '() 'angle)


;; customize god-magics-pairs-after-define
(god-magics-pairs-after-define 'round '()' '()' '()' '()' 'round)
(god-magics-pairs-after-define 'square '()' '()' '()' '() 'square)
(god-magics-pairs-after-define 'double-quote '()' '()' '()' '() 'double-quote)
(god-magics-pairs-after-define 'angle '()' '()' '()' '() 'angle)

;; customize god-magics-pairs-after-define-pair
(god-magics-pairs-after-define-pair 'round '()' '()' '()' '() 'round)
(god-magics-pairs-after-define-pair 'square '()' '()' '()' '() 'square)
(god-magics-pairs-after-define-pair 'double-quote '()' '()' '()' '() 'double-quote)
(god-magics-pairs-after-define-pair 'angle '()' '()' '()' '() 'angle)


;; customize god-magics-pairs-after-delete-pair
(god-magics-pairs-after-delete-pair 'round '()' '()' '()' '() 'round)
(god-magics-pairs-after-delete-pair 'square '()' '()' '()' '() 'square)
(god-magics-pairs-after-delete-pair 'double-quote '()' '()' '()' '() 'double-quote)
(god-magics-pairs-after-delete-pair 'angle '()' '()' '()' '() 'angle)
;; customize god-magics-pairs-after-delete-pair-pair
(god-magics-pairs-after-delete-pair-pair 'round '()' '()' '()' '() 'round)
(god-magics-pairs-after-delete-pair-pair 'square '()' '()' '()' '() 'square)
(god-magics-pairs-after-delete-pair-pair 'double-quote '()' '()' '()' '() 'double-quote)
(god-magics-pairs-after-delete-pair-pair 'angle '()' '()' '()' '() 'angle)



;; customize god-magics-pairs-after-insert-pair
(god-magics-pairs-after-insert-pair 'round '()' '()' '()' '() 'round)
(god-magics-pairs-after-insert-pair 'square '()' '()' '()' '() 'square)
(god-magics-pairs-after-insert-pair 'double-quote '()' '()' '()' '() 'double-quote)
(god-magics-pairs-after-insert-pair 'angle '()' '()' '()' '() 'angle)
;; customize god-magics-pairs-after-insert-pair-pair
(god-magics-pairs-after-insert-pair-pair 'round '()' '()' '()' '() 'round)
(god-magics-pairs-after-insert-pair-pair 'square '()' '()' '()' '() 'square)
(god-magics-pairs-after-insert-pair-pair 'double-quote '()' '()' '()' '() 'double-quote)
(god-magics-pairs-after-insert-pair-pair 'angle '()' '()' '()' '() 'angle)


;; customize god-magics-pairs-after-replace-pair
(god-magics-pairs-after-replace-pair 'round '()' '()' '()' '() 'round)
(god-magics-pairs-after-replace-pair 'square '()' '()' '()' '() 'square)
(god-magics-pairs-after-replace-pair 'double-quote '()' '()' '()' '() 'double-quote)
(god-magics-pairs-after-replace-pair 'angle '()' '()' '()' '() 'angle)
;; customize god-magics-pairs-after-replace-pair-pair
(god-magics-pairs-after-replace-pair-pair 'round '()' '()' '()' '() 'round)
(god-magics-pairs-after-replace-pair-pair 'square '()' '()' '()' '() 'square)
(god-magics-pairs-after-replace-pair-pair 'double-quote '()' '()' '()' '() 'double-quote)
(god-magics-pairs-after-replace-pair-pair 'angle '()' '()' '()' '() 'angle)

;; customize god-magics-pairs-after-transpose-pair
(god-magics-pairs-after-transpose-pair 'round '()' '()' '()' '() 'round)
(god-magics-pairs-after-transpose-pair 'square '()' '()' '()' '() 'square)
(god-magics-pairs-after-transpose-pair 'double-quote '()' '()' '()' '() 'double-quote)
(god-magics-pairs-after-transpose-pair 'angle '()' '()' '()' '() 'angle)

    

