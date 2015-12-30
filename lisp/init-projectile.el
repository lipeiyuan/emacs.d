(require-package 'projectile)
(projectile-global-mode)
;; (setq projectile-indexing-method 'native)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'helm)
(setq projectile-switch-project-action 'projectile-dired)
(define-key projectile-mode-map (kbd "C-c l") 'projectile-find-file)

(after-load 'diminish
  (diminish 'projectile-mode))

(provide 'init-projectile)
