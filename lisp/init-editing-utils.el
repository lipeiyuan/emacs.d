(add-to-list 'load-path (expand-file-name "lisp/editing-utils" user-emacs-directory))
;; enhanced help mechanism
(require-package 'help-fns+)
(require 'help-fns+)

;; dimish minor mode name to save mode line space
(require-package 'diminish)

;; enable auto-pairing
(require 'init-autopair)
(diminish 'autopair-mode)

;; undo-tree
(require 'init-undo-tree)
(diminish 'undo-tree-mode)

(provide 'init-editing-utils)
