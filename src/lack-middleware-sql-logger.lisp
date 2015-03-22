(in-package :cl-user)
(defpackage lack.middleware.sql.logger
  (:use :cl)
  (:export :*lack-middleware-sql-logger*))
(in-package :lack.middleware.sql.logger)

(defvar *logger* nil)

(defvar *lack-middleware-sql-logger*
  (lambda (app &key logger)
    (lambda (env)
      (when logger
        (setf *logger* logger))
      (prog1 (funcall app env)
        (setf *logger* nil)))))

(defmethod dbi:execute :after (query &rest params)
  (when *logger*
    (funcall *logger* (apply (dbi.driver:query-prepared query) params))))
