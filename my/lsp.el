(require 'eglot)

;; Keybinds #####################################################################

(with-eval-after-load 'eglot
  (keymap-set eglot-mode-map "C-c r" #'eglot-rename)
  (keymap-set eglot-mode-map "C-c a" #'eglot-code-actions)
  (keymap-set eglot-mode-map "C-c n" #'flymake-goto-next-error)
  (keymap-set eglot-mode-map "C-c p" #'flymake-goto-prev-error))

;; Servers ######################################################################

(add-to-list 'eglot-server-programs
	     '(java-mode . ("/home/pedro/.local/share/nvim/mason/packages/jdtls/jdtls")))
