;;; Misc
(ido-mode t)                                     ;; Interactive Do, for opening files and switching buffers
;(iswitchb-mode 1)                                ;; Interactive buffer switching, don't use with ido
(tool-bar-mode -1)                               ;; Remove the entirely useless tool-bar
;(menu-bar-mode -1)                               ;; Hide menu
(show-paren-mode 1)                              ;; Show Paren-matching
;(global-dot-mode 1)                              ;; C-. to redo
;(global-vip-mode 1)                              ;; Turn on global vip mode (in insert)
;(setq viper-mode t)                              ;; Viper mode if you want it, I prefer vip
(scroll-bar-mode -1)                             ;; I hate the scroll bar
(line-number-mode 1)                             ;; Show line number on mode-bar
(blink-cursor-mode 1)                            ;; I like blink
;(global-linum-mode 1)                            ;; Have line numbers on right hand side for all buffers by default
(column-number-mode 1)                           ;; Show column number on mode bar
(transient-mark-mode 1)                          ;; Show Highlight-region
(setq echo-keystrokes 0.1)                       ;; Quickly show key pressed
(setq inhibit-splash-screen t)                   ;; I hate the splash screen
(setq-default indent-tabs-mode nil)              ;; Use spaces instead of tabs
(add-hook 'text-mode-hook 'flyspell-mode)        ;; Auto-flyspell for text mode
(midnight-delay-set 'midnight-delay "4:30am")    ;; Performs midnight mode at 4:30am, namely clean-buffer-list
(setq clean-buffer-list-delay-special (* 1 60))  ;; Clean special buffers



(setq ispell-program-name "aspell")   ;; Use aspell instead of ispell

;; 2 Space Tabs
(setq c-basic-offset 2 tab-width 2 indent-tabs-mode t)



(add-to-list 'backup-directory-alist             ;; Move all those NAME~ files to ~/backups
             '("." . "~/.backups/"))
