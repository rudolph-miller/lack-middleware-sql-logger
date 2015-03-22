# Lack-Middleware-Sql-Logger
SQL-logger middleware for [Lack](https://github.com/fukamachi/lack) with [DBI](https://github.com/fukamachi/cl-dbi).

## Usage
```Lisp
(lack:builder
  (:sql-logger :out (lambda (out) (format "Executed: ~a" out)))
  *app*)

;; When you execute SQL with connection of DBI,
;; => SELECT * FROM `users` WHERE (`id` = 1) LIMIT 1
```

## Author
- Rudolph-Miller (chopsticks.tk.ppfm@gmail.com)

## Copyright
Copyright (c) 2015 Rudolph-Miller (chopsticks.tk.ppfm@gmail.com)

## License
Licensed under the MIT License.
