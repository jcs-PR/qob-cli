;;;; cmds/core/build.lisp --- Build executable

;;; Commentary
;;
;; The `build' command definition.
;;

;;; Code

(defpackage qob/build
  (:use cl)
  (:export command))

(in-package :qob/build)

(defun options ()
  "Options for `build' command."
  (list
   (clingon:make-option
    :string
    :description "system name"
    :short-name #\n
    :long-name "name"
    :required t
    :key :name)
   (clingon:make-option
    :string
    :description "output directory"
    :short-name #\o
    :long-name "output"
    :key :output)))

(defun handler (cmd)
  "Handler for `build' command."
  (qob:call-script "core/build"))

(defun command ()
  "Build command."
  (clingon:make-command
   :name "build"
   :description "Build the executable"
   :usage "-n <name> -o <path>"
   :options (options)
   :handler #'handler))
