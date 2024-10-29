;; Default scrolling was driving me crazy (but still available)
(keymap-global-set "M-n" (lambda() (interactive) (scroll-up-command 25)))
(keymap-global-set "M-p" (lambda() (interactive) (scroll-down-command 25)))

(keymap-global-set "C-;" 'comment-or-uncomment-region)

;; Dired
(require 'dired)
(keymap-set dired-mode-map "b" 'dired-up-directory)
(keymap-set dired-mode-map "C-c n d" 'dired-create-directory)
(keymap-set dired-mode-map "C-c n f" 'dired-create-empty-file)
