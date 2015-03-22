#|
  This file is a part of lack-middleware-sql-logger project.
|#

(in-package :cl-user)
(defpackage lack-middleware-sql-logger-test-asd
  (:use :cl :asdf))
(in-package :lack-middleware-sql-logger-test-asd)

(defsystem lack-middleware-sql-logger-test
  :author ""
  :license ""
  :depends-on (:lack-middleware-sql-logger
               :prove)
  :components ((:module "t"
                :components
                ((:test-file "lack-middleware-sql-logger"))))

  :defsystem-depends-on (:prove-asdf)
  :perform (test-op :after (op c)
                    (funcall (intern #.(string :run-test-system) :prove-asdf) c)
                    (asdf:clear-system c)))
