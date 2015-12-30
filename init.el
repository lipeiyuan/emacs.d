(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-utils)
(require 'init-elpa)

(require 'init-dired)
(require 'init-ido)
(require 'init-editing-utils)
(require 'init-git)
(require 'init-themes)
(require 'init-projectile)
(require 'init-buffer-move)
(require 'init-company)
(require 'init-helm)
(require 'init-lua-mode)
(require 'init-ace-jump-mode)
(require 'init-other)
(provide 'init)
(put 'narrow-to-region 'disabled nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Monaco" :foundry "outline" :slant normal :weight normal :height 98 :width normal)))))
