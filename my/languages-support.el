;; Yaml

(use-package yaml-mode
  :ensure t)

;; CPP

(setq c-default-style "bsd")
(setq c-basic-offset 4)

;; (add-hook 'c++-mode-hook
;;           (lambda ()
;;             (setq c-default-style "bsd"       ;; Use "linux" style or "stroustrup"
;;                   c-basic-offset 4)             ;; Set your preferred indent size
;;             (c-set-offset 'substatement-open 0) ;; No extra indent for opening braces
;;             ))
