;;;; src/packages.lisp --- Package definitions

;;; Commentary
;;
;; Define package definitions.
;;

;;; Code

(defpackage qob-cli
  (:use cl)
  (:export
   ;; src/utils.lsip
   inhibit-ql-download-p
   force-global-p
   exec-dir
   call-script
   call-impls
   ;; cmds/qob.lisp
   command
   ;; src/main.lsip
   main))

(in-package :qob-cli)

;;; End of src/packages.lisp
