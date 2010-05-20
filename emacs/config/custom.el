(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(blink-cursor-mode t)
 '(column-number-mode t)
 '(initial-major-mode (quote text-mode))
 '(menu-bar-mode t)
 '(org-agenda-files (quote ("~/org.org")))
 '(preview-LaTeX-command (quote ("%`%l \"\\nonstopmode\\nofiles\\PassOptionsToPackage{" ("," . preview-required-option-list) "}{preview}\\AtBeginDocument{\\ifx\\ifPreview\\undefined" preview-default-preamble "\\fi}\"%' %t")))
 '(preview-default-option-list (quote ("displaymath" "floats" "graphics" "textmath" "sections" "footnotes")))
 '(preview-default-preamble (quote ("\\RequirePackage[" ("," . preview-default-option-list) "]{preview}[2004/11/05]" "\\PreviewEnvironment{itemize}" "\\PreviewEnvironment{verbatim}" "\\PreviewEnvironment{ocaml}" "\\PreviewEnvironment{tikzpicture}" "\\PreviewMacro[!]{\\n}" "\\PreviewMacro[!]{\\citet}" "\\PreviewMacro[!]{\\citep}")))
 '(show-paren-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "gray12" :foreground "green" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 100 :width normal :foundry "xos4" :family "Terminus")))))
