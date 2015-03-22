#|
  This file is a part of lack-middleware-sql-logger project.
|#

(in-package :cl-user)
(defpackage lack-middleware-sql-logger-asd
  (:use :cl :asdf))
(in-package :lack-middleware-sql-logger-asd)

(defsystem lack-middleware-sql-logger
  :version "0.1"
  :author ""
  :license ""
  :depends-on (:dbi)
  :components ((:module "src"
                :components
                ((:file "lack-middleware-sql-logger"))))
  :description ""
  :long-description
  #.(with-open-file (stream (merge-pathnames
                             #p"README.md"
                             (or *load-pathname* *compile-file-pathname*))
                            :if-does-not-exist nil
                            :direction :input)
      (when stream
        (let ((seq (make-array (file-length stream)
                               :element-type 'character
                               :fill-pointer t)))
          (setf (fill-pointer seq) (read-sequence seq stream))
          seq)))
  :in-order-to ((test-op (test-op lack-middleware-sql-logger-test))))
