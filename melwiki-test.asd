(in-package :cl-user)
(defpackage melwiki-test-asd
  (:use :cl :asdf))
(in-package :melwiki-test-asd)

(defsystem melwiki-test
  :author "windymelt"
  :license ""
  :depends-on (:melwiki
               :prove)
  :components ((:module "t"
                :components
                ((:file "melwiki"))))
  :perform (load-op :after (op c) (asdf:clear-system c)))
