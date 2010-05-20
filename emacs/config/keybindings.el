;;;Key shortcuts
(global-set-key "\C-o" 'find-file)
(global-set-key "\M-o" 'find-file-other-window)
(global-set-key "\C-z" 'switch-to-buffer)
;(global-set-key "\M-z" 'switch-to-buffer-other-window)
(global-set-key "\M-z"   'zap-up-to-char)          ;; I like better than zap-to-char
(global-set-key "\M-i" 'help)
(global-set-key "\C-v" 'other-window)
(global-set-key "\M-v" 'delete-other-windows)
;(global-set-key "\M-\C-i" 'delete-window)
(global-set-key "\M-m" 'open-line)
(global-set-key "\C-h"   'backward-delete-char)    ;; I like terminal style backspace
(global-set-key "\M-h"   'backward-kill-word)


;(global-set-key "\C-cz"  'zsh)
;(global-set-key "\C-ce"  'eshell)
;(global-set-key "\C-z"   'vip-mode)                ;; Easy switching to Vi mode
(global-set-key "\M-g"   'goto-line)
(global-set-key "\C-cl"  'linum-mode)
;(global-set-key "\C-cw"  'kill-region)             ;; Replaces C-w
(global-set-key "\C-cm"  'menu-bar-mode)           ;; Sometimes the menu is useful
(global-set-key "\C-cb"  'revert-buffer)           ;; Occasionally used frequently
(global-set-key "\C-cr"  'comment-region)          ;; A must
(global-set-key "\C-ch"  'help) 

(global-set-key "\C-cu"  'uncomment-region)        ;; Likewise
(global-set-key "\C-cs"  'spacey-parenthesis)        ;; Likewise
;(global-set-key "\C-w"  'backward-kill-word)      ;; Uncomment for terminal style words
;(global-set-key "\M-C-h" 'backward-kill-word)
;(global-set-key "\C-cv"  'vip-change-mode-to-vi)
(global-set-key "\C-cd"  'delete-trailing-whitespace)

(global-set-key "\M-n" 'scroll-up-1-line)
(global-set-key "\M-p" 'scroll-down-1-line)

(global-set-key [(control down)] 'scroll-up)
;;(global-set-key "\C-9" 'scroll-up)
(global-set-key [(control up)] 'scroll-down)
;;(global-set-key "\C-0" 'scroll-down)
(global-set-key [(meta down)] 'end-of-buffer)
(global-set-key [(meta up)] 'beginning-of-buffer)
