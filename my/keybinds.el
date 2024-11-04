;; Scrolling ####################################################################

(keymap-global-set "C-v" (lambda() (interactive) (scroll-up-command 25)))
(keymap-global-set "M-v" (lambda() (interactive) (scroll-down-command 25)))

;; Default scrolling was driving me crazy (but still available)
;; (keymap-global-set "M-n" (lambda() (interactive) (scroll-up-command 25)))
;; (keymap-global-set "M-p" (lambda() (interactive) (scroll-down-command 25)))

;; (add-hook 'after-change-major-mode-hook
;;           (lambda ()
;;             (local-set-key (kbd "M-n") (lambda () (interactive) (scroll-up-command 25)))
;;             (local-set-key (kbd "M-p") (lambda () (interactive) (scroll-down-command 25)))))

;; (keymap-global-set "C-;" 'comment-or-uncomment-region)

;; Dired
(require 'dired)
(keymap-set dired-mode-map "b" 'dired-up-directory)
(keymap-set dired-mode-map "C-c n d" 'dired-create-directory)
(keymap-set dired-mode-map "C-c n f" 'dired-create-empty-file)

(keymap-global-set "M-s M-s" 'replace-string)
