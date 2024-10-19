;;;; cmds/core/install.lisp --- Build executable

;;; Commentary
;;
;; The `install' command definition.
;;

;;; Code

(defpackage qob/install
  (:use cl)
  (:export command))

(in-package :qob/install)

(defun options ()
  "Options for `install' command."
  (list ))

(defun handler (cmd)
  "Handler for `install' command."
  (declare (ignore cmd))
  (qob:call-script "core/install"))

(defun command ()
  "The `install' command."
  (clingon:make-command
   :name "install"
   :description "Install packages"
   :usage "[names..]"
   :options (options)
   :handler #'handler))
