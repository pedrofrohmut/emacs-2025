;; Apperance ####################################################################

(add-to-list 'default-frame-alist '(font . "FiraMono Nerd Font 11"))
(add-to-list 'default-frame-alist '(alpha-background . 90))

;; Theme and Colors #############################################################

(use-package doom-themes
  :ensure t)

(load-theme 'doom-tokyo-night t)
