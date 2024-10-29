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

;; Set customize file
(setq custom-file "~/.config/emacs/emacs-custom.el")
(load custom-file :noerror)

;; Saves your location in files for the next time you open it
(save-place-mode t)

;; Update emacs buffers when the files change outside (keep buffers sync)
(setq global-auto-revert-non-file-buffers t)
(global-auto-revert-mode t)

;; Mode to better auto complete on minibuffer
(ido-mode t)

;; Show cursor position in statusbar
(setq column-number-mode t)

;; Insert closing character like ) } ]
(setq electric-pair-mode t)
(electric-pair-mode)

;; Apperance
(load "~/.config/emacs/my/appearance.el")

;; Fill Column
(load "~/.config/emacs/my/fill-column.el")

;; Emmet
(load "~/.config/emacs/my/emmet.el")

;; Which-Key
(load "~/.config/emacs/my/which-key.el")
