;;; Org Mode
(unless (assoc "\\.org\\'" auto-mode-alist)
  (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode)))
(add-hook 'org-mode-hook (lambda () (local-set-key "\M-m" 'org-meta-return)))
(add-hook 'org-mode-hook 'org-indent-mode)


;;; Yaml ;;;
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
;;; End Yaml ;;;



;;;Mode configurations

(add-hook 'find-file-hooks 'linum-on)                   ;; Turn on linum when a file is opened
(add-hook 'find-file-hooks 'dot-mode-on)                  ;; Same for dot mode
;(add-hook 'find-file-hooks 'vip-mode)
(setq uniquify-separator "|")
(setq uniquify-after-kill-buffer-p t)
(setq uniquify-ignore-buffers-re "^\\*")
(setq uniquify-buffer-name-style 'reverse)
(setq ido-enable-flex-matching t)
(setq vip-inhibit-startup-message t)

(add-hook 'fundamental-mode-hook 'flyspell-mode) ;; Auto-flyspell for fundamental mode

;;; Scala ;;;
(add-hook 'scala-mode-hook
          '(lambda ()
             (yas/minor-mode-on)))

;;; End Scala ;;;