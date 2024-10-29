;; Default scrolling was driving me crazy (but still available)
(keymap-global-set "M-n" (lambda() (interactive) (scroll-up-command 25)))
(keymap-global-set "M-p" (lambda() (interactive) (scroll-down-command 25)))

(keymap-global-set "C-;" 'comment-region)
