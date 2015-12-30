(add-to-list 'load-path
             (expand-file-name "lisp/custom-themes" user-emacs-directory))

(require-package 'color-theme)
(require 'color-theme-solarized)
(color-theme-solarized-dark)
(provide 'init-themes)
