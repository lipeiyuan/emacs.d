(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-utils)
(require 'init-elpa)

(require 'init-dired)
(require 'init-recentf)
(require 'init-ido)
(require 'init-editing-utils)
(require 'init-evil)
(require 'init-git)
(require 'init-markdown)
(require 'init-themes)
(provide 'init)
(put 'narrow-to-region 'disabled nil)
