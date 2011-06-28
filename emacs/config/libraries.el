(add-path "~/emacs/site-lisp/scala")

(load-library "linum")
(load-library "midnight")
(load-library "dot-mode")             ;; Use C-. to redo commands
;(load-library "flex-mode")
(load-library "buff-menu+")
(load-library "save-macro")
(load-library "myutilities")
(load-library "gse-number-rect")
(load-library "auctex")
(load-library "preview-latex")



(require 'ido)
(require 'uniquify)
(require 'dot-mode)
;(require 'color-theme)
(require 'scala-mode-auto)

(load "tramp")
(load "vip")
;(require 'viper)

(add-path "~/emacs/site-lisp/yasnippet-0.6.1c")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/emacs/site-lisp/yasnippet-0.6.1c/snippets")

(load-library "tuareg")

(require 'yaml-mode)

