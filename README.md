# Lack-Middleware-Sql-Logger
SQL-logger middleware for [lack](https://github.com/fukamachi/lack) with [DBI](https://github.com/fukamachi/cl-dbi).

## Usage
```Lisp
(lack:builder
  (:sql-logger :out (lambda (out) (format "Executed: ~a" out)))
  *app*)

;; When you execute SQL with connection of DBI,
;; => SELECT * FROM `users` WHERE (`id` = 1) LIMIT 1
```
