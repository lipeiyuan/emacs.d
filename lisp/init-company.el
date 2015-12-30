(require-package 'company)
(global-company-mode)

(after-load 'diminish
  (diminish 'company-mode))

(provide 'init-company)
