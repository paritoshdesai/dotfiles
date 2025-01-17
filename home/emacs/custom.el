(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(describe-char-unidata-list
   '(name old-name general-category decomposition uppercase lowercase titlecase))
 '(package-selected-packages
   '(restclient python-black docker-compose-mode pdf-tools dockerfile-mode lsp-pyright htmlize yasnippet yaml-mode xterm-color visual-fill-column use-package python-pytest python-docstring powerline paredit ox-reveal org-bullets nix-mode magit lsp-ui lsp-python-ms json-mode js2-mode jenkinsfile-mode haskell-mode flycheck-rust flycheck-pycheckers exec-path-from-shell ess el-patch direnv dap-mode company-box cargo auto-virtualenv all-the-icons-dired))
 '(safe-local-variable-values
   '((python-shell-interpreter . "bin/nix-aware-python")
     (python-shell-interpreter . "nix-shell")))
 '(send-mail-function 'sendmail-send-it)
 '(shell-file-name "/bin/bash")
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(transient-mark-mode nil)
 '(warning-suppress-log-types '((comp) (comp)))
 '(warning-suppress-types '((comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :width normal :foundry "nil" :family "Courier New" :height 151))))
 '(company-scrollbar-bg ((t (:background "#19b3224446ac"))))
 '(company-scrollbar-fg ((t (:background "#12df192a33e6"))))
 '(company-tooltip ((t (:inherit default :background "#0ec713b428a3"))))
 '(company-tooltip-annotation ((t (:inherit font-lock-builtin-face))))
 '(company-tooltip-common ((t (:inherit font-lock-constant-face))))
 '(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
 '(erc-input-face ((t (:foreground "cornflower blue"))))
 '(erc-my-nick-face ((t (:foreground "CornflowerBlue" :weight bold))))
 '(flycheck-error ((t (:underline "red"))))
 '(flycheck-warning ((t (:underline "darkorange"))))
 '(flymake-error ((t (:background "#00000000" :underline "red"))))
 '(flymake-warning ((t (:background "#00000000" :underline "dark orange"))))
 '(lsp-lsp-flycheck-info-unnecessary-face ((t (:underline (:color "#3366FF" :style line)))))
 '(sgml-namespace ((t (:inherit font-lock-builtin-face)))))
