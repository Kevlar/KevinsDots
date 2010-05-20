( defun spacey-parenthesis ( )
  "Go through and add spaces before and after parenthesis, to make some stuff
pretty. May have to run a couple of times for parens that are right next to each
other"   
  ( interactive )
  ( save-excursion
    ( beginning-of-buffer )
    ( query-replace-regexp "(\\([^ \*\n(]\\)" "( \\1" )
    ( beginning-of-buffer )
    ( query-replace-regexp "\\([^ \*\n)]\\))" "\\1 )" )
    ( beginning-of-buffer )
    ( query-replace-regexp ",\\([^ \n]\\)" ", \\1" )
    ( beginning-of-buffer )
    ( query-replace-regexp "( (" "((" )
    ( beginning-of-buffer )
    ( query-replace-regexp "( (" "((" )
    ( beginning-of-buffer )
    ( query-replace-regexp ") )" "))" )
    ( beginning-of-buffer )
    ( query-replace-regexp ") )" "))" )
    ))

;; Variation of `zap-to-char'.

( defun zap-up-to-char ( arg char )
  "Kill up to, but not including ARG'th occurrence of CHAR.
Case is ignored if `case-fold-search' is non-nil in the current buffer.
Goes backward if ARG is negative; error if CHAR not found.
Ignores CHAR at point."
  ( interactive "p\ncZap up to char: " )
  ( let (( direction ( if ( >= arg 0 ) 1 -1 )))
    ( kill-region ( point )
		 ( progn
		   ( forward-char direction )
		   ( unwind-protect
		       ( search-forward ( char-to-string char ) nil nil arg )
		     ( backward-char direction ))
		   ( point )))))

( defun zsh ( )
  ( interactive )
  ( term "/bin/zsh" ))

(defun scroll-up-1-line nil
  (interactive)
  (scroll-up 1))

(defun scroll-down-1-line nil
  (interactive)
  (scroll-down 1))

(defun word-count nil "Count words in buffer" (interactive)
  (shell-command-on-region (point-min) (point-max) "wc -w"))

