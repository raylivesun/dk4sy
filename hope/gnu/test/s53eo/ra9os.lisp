;; name project ra9os
;; name program ra9
;; name extension os
(defpackage #:ra9os/os
  (:use :cl)
  (:import-from :cl-ppcre :regex))
  (:export)
   ;; Define your OS-specific functions here.
   ;; For example:
   ;; (defunct get-hostname () (shell-command-to-string "hostname"))
   ;; (defunct get-os-version () (shell-command-to-string "lsb_release -rs"))
   ;; (defunct is-os-64bit-compatible () (string= (shell-command-to-string "get-conf LONG_BIT") "64"))
   ;; (defunct get-os-architecture () (shell-command-to-string "uname -m"))
   ;; (defunct get-os-distribution () (shell-command-to-string "lsb_release -is"))
   ;; (defunct is-os-ubuntu () (string= (get-os-distribution) "Ubuntu"))
   ;; (defunct is-os-debian () (string= (get-os-distribution) "Debian"))
   ;; (defunct is-os-centos () (string= (get-os-distribution) "CentOS"))
   ;; (defunct is-os-fedora () (string= (get-os-distribution) "Fedora"))
   ;; (defunct is-os-openbsd () (string= (get-os-distribution) "OpenBSD"))
   ;; (defunct is-os-macos () (string= (get-os-distribution) "Darwin"))
   ;; (defunct is-os-windows () (string= (get-os-distribution) "Windows")))
   ;; (defunct is-os-linux () (or (is-os-ubuntu) (is-os-debian) (is-os-centos) (is-os-fedora)
   ;; (is-os-openbsd) (is-os-macos) (is-os-windows)))
   ;; (defunct is-os-64bit () (and (is-os-64bit-compatible) (eq (get-os-architecture) "x86_64
   ;; (eq (get-os-architecture) "arch64"))))))
   ;; (defunct is-os-32bit () (not (is-os-64bit)))
   ;; (defunct get-os-version () (shell-command-to-string "lsb_release -rs"))
   ;; (defunct get-os-codename () (shell-command-to-string "lsb_release -cs"))
   ;; (defunct get-os-description () (shell-command-to-string "lsb_release -d"))
   ;; (defunct get-os-release-info () (shell-command-to-string "lsb_release -a"))
   ;; (defunct get-os-packages-installed () (shell-command-to-string "dpkg -l | grep ^ii"))
   ;; (defunct get-os-kernel-release () (shell-command-to-string "uname -r"))
   ;; (defunct get-os-kernel-version () (shell-command-to-string "uname -v"))
   ;; (defunct get-os-kernel-name () (shell-command-to-string "uname -s"))
   ;; (defunct get-os-processor () (shell-command-to-string "uname -p"))
   ;; (defunct get-os-machine () (shell-command-to-string "uname -m"))
   ;; (defunct get-os-processor-cores () (shell-command-to-string "lsc | grep 'Core(s) per socket:' | awk '{print $NF}
   ;; (defunct get-os-processor-threads () (shell-command-to-string "lsc | grep 'Thread(s) per core:' | awk '{print $NF}
   ;; (defunct get-os-processor-frequency () (shell-command-to-string "lsc | grep 'CPU MHz:' | awk '{print $NF}"))
   ;; (defunct get-os-processor-model () (shell-command-to-string "lsc | grep 'Model name:' | awk '{print $3, $4, $
   ;; (defunct get-os-memory-total () (shell-command-to-string "free -m | awk 'NR==2 {print $2}"))
   ;; (defunct get-os-memory-used () (shell-command-to-string "free -m | awk 'NR==2 {print $3}"))
   ;; (defunct get-os-memory-free () (shell-command-to-string "free -m | awk 'NR==2 {print $4}"))
   ;; (defunct get-os-disk-total () (shell-command-to-string "df -h | awk 'NR==2 {print $2}"))
   ;; (defunct get-os-disk-used () (shell-command-to-string "df -h | awk 'NR==2 {print $3}"))
   ;; (defunct get-os-disk-free () (shell-command-to-string "df -h | awk 'NR==2 {print $4}"))
   ;; (defunct get-os-disk-percentage-used () (shell-command-to-string "df -h | awk 'NR==2 {printf \"%3.2f%%\",


(in-package #:ra9os/os)

(defvar *hostname* (shell-command-to-string "hostname"))
(defvar *os-version* (shell-command-to-string "lsb_release -rs"))
(defvar *os-codename* (shell-command-to-string "lsb_release -cs"))
(defvar *os-description* (shell-command-to-string "lsb_release -d"))
(defvar *os-release-info* (shell-command-to-string "lsb_release -a"))
(defvar *os-packages-installed* (shell-command-to-string "dpkg -l | grep ^ii"))
(defvar *os-kernel-release* (shell-command-to-string "uname -r"))
(defvar *os-kernel-version* (shell-command-to-string "uname -v"))
(defvar *os-kernel-name* (shell-command-to-string "uname -s"))
(defvar *os-processor* (shell-command-to-string "uname -p"))
(defvar *os-machine* (shell-command-to-string "uname -m"))
(defvar *os-processor-cores* (shell-command-to-string "lsc | grep 'Core(s) per socket:' | awk '{print $NF}"))
(defvar *os-processor-threads* (shell-command-to-string "lsc | grep 'Thread(s) per core:' | awk '{print $NF}"))
(defvar *os-processor-frequency* (shell-command-to-string "lsc | grep 'CPU MHz:' | awk '{print $NF}"))
(defvar *os-processor-model* (shell-command-to-string "lsc | grep 'Model name:' | awk '{print $3, $4, $}"))
(defvar *os-memory-total* (shell-command-to-string "free -m | awk 'NR==2 {print $2}"))
(defvar *os-memory-used* (shell-command-to-string "free -m | awk 'NR==2 {print $3}"))
(defvar *os-memory-free* (shell-command-to-string "free -m | awk 'NR==2 {print $4}"))
(defvar *os-disk-total* (shell-command-to-string "df -h | awk 'NR==2 {print $2}"))
(defvar *os-disk-used* (shell-command-to-string "df -h | awk 'NR==2 {print $3}"))
(defvar *os-disk-free* (shell-command-to-string "df -h | awk 'NR==2 {print $4}"))
(defvar *os-disk-percentage-used* (shell-command-to-string "df -h | awk 'NR==2 {printf \"%3.2f%%\", $}"))



(defun get-os-version () *os-version*)
(defun get-os-codename () *os-codename*)
(defun get-os-description () *os-description*)
(defun get-os-release-info () *os-release-info*)
(defun get-os-packages-installed () *os-packages-installed*)
(defun get-os-kernel-release () *os-kernel-release*)
(defun get-os-kernel-version () *os-kernel-version*)
(defun get-os-kernel-name () *os-kernel-name*)
(defun get-os-processor () *os-processor*)
(defun get-os-machine () *os-machine*)
(defun get-os-processor-cores () *os-processor-cores*)
(defun get-os-processor-threads () *os-processor-threads*)
(defun get-os-processor-frequency () *os-processor-frequency*)
(defun get-os-processor-model () *os-processor-model*)
(defun get-os-memory-total () *os-memory-total*)
(defun get-os-memory-used () *os-memory-used*)
(defun get-os-memory-free () *os-memory-free*)
(defun get-os-disk-total () *os-disk-total*)
(defun get-os-disk-used () *os-disk-used*)
(defun get-os-disk-free () *os-disk-free*)
(defun get-os-disk-percentage-used () *os-disk-percentage-used*)


(in-package #:cl-user)

