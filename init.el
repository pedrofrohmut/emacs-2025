;; Packages ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("elpa" . "https://elpa.gnu.org/packages/"))
(package-initialize)
;;(package-refresh-contents)

(setq inhibit-startup-message t)

;; UI
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(set-fringe-mode 12)

;; Line Numbers (If I ever want it back is here)
(global-display-line-numbers-mode t)
(setq-default display-line-numbers-type 'relative)

;; Maching highlight
(show-paren-mode t)
(setq show-paren-delay 0)
(setq show-paren-style 'parenthesis)
(set-face-attribute 'show-paren-match nil
                    :foreground "#f00" :background "#000" :weight 'ultra-bold)

;; Files
(setq make-backup-files nil)
(setq auto-save-default nil)

;; Saves your location in files for the next time you open it
(save-place-mode t)

;; Update emacs buffers when the files change outside (keep buffers sync)
(setq global-auto-revert-non-file-buffers t)
(global-auto-revert-mode t)

;; Mode to better auto complete on minibuffer
(ido-mode t)

;; Show cursor position in statusbar
(setq column-number-mode t)

;; Apperance
(load "~/.config/emacs/my/appearance.el")

;; Fill Column
(load "~/.config/emacs/my/fill-column.el")

;; Emmet
(load "~/.config/emacs/my/emmet.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("4ade6b630ba8cbab10703b27fd05bb43aaf8a3e5ba8c2dc1ea4a2de5f8d45882" "48042425e84cd92184837e01d0b4fe9f912d875c43021c3bcb7eeb51f1be5710" "f5f80dd6588e59cfc3ce2f11568ff8296717a938edd448a947f9823a4e282b66" "4594d6b9753691142f02e67b8eb0fda7d12f6cc9f1299a49b819312d6addad1d" default))
 '(package-selected-packages
   '(emmet-mode visual-fill-column doom-themes typescript-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
