;; Scrolling ####################################################################

;; (keymap-global-set "C-v" (lambda() (interactive) (scroll-up-command 30)))
;; (keymap-global-set "M-v" (lambda() (interactive) (scroll-down-command 30)))

(defun my/scroll-half-page-down ()
  "Scroll half a page down."
  (interactive)
  (scroll-up-command (/ (window-body-height) 2)))

(defun my/scroll-half-page-up ()
  "Scroll half a page up."
  (interactive)
  (scroll-down-command (/ (window-body-height) 2)))

(keymap-global-set "M-n" #'my/scroll-half-page-down)
(keymap-global-set "M-p" #'my/scroll-half-page-up)
(keymap-global-set "C-v" #'my/scroll-half-page-down)
(keymap-global-set "M-v" #'my/scroll-half-page-up)

;; Dired
(require 'dired)
(keymap-set dired-mode-map "b" 'dired-up-directory)
(keymap-set dired-mode-map "C-c n d" 'dired-create-directory)
(keymap-set dired-mode-map "C-c n f" 'dired-create-empty-file)

;; Utils
(keymap-global-set "M-s M-s" 'replace-string)
(keymap-global-set "C-M-y" 'duplicate-line)
(keymap-global-set "C-<down>" 'join-line)
(keymap-global-set "M-o" 'other-window)
(keymap-global-set "C-x c" 'compile)

;; Buffer recent
(defun my/switch-to-recent-buffer ()
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

(keymap-global-set "M-g b" #'my/switch-to-recent-buffer)
