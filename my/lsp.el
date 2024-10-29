(require 'eglot)

;; Servers ######################################################################

(add-to-list 'eglot-server-programs
	     '(java-mode . ("/home/pedro/.local/share/nvim/mason/packages/jdtls/jdtls")))
