(add-to-list 'load-path (expand-file-name "lisp/editing-utils" user-emacs-directory))
;; enhanced help mechanism
(require-package 'help-fns+)
(require 'help-fns+)

;; dimish minor mode name to save mode line space
(require-package 'diminish)

;; some default value
(setq-default
 buffers-menu-max-size 20
 case-fold-search t
 column-number-mode t
 grep-scroll-output t
 indent-tabs-mode nil
 line-spacing 0.2
 make-backup-files nil
 mouse-yank-at-point t
 save-interprogram-paste-before-kill t
 scroll-step 1
 scroll-margin 3
 set-mark-command-repeat-pop t
 show-trailing-whitespace t
 tooltip-delay 1.5
 truncate-lines nil
 truncate-partial-width-windows nil
 visible-bell t)

;; 都用emacs了，就别再整这些破菜单工具栏啥的了
(menu-bar-mode 0)
(set-scroll-bar-mode nil)
(tool-bar-mode 0)

;; 光标不要闪，老夫眼睛都快瞎了
(blink-cursor-mode 0)

;; auto-revert
(global-auto-revert-mode)
(setq global-auto-revert-non-file-buffers t
      auto-revert-verbose t)

;; enable auto-pairing
(require 'init-autopair)
(diminish 'autopair-mode)

;; some personal key bindings
(global-set-key (kbd "C-c r") 'replace-string)

;; newline behavior
(global-set-key (kbd "RET") 'newline-and-indent)
(defun sanityinc/newline-at-end-of-line ()
  "Move to end of line, enter a newline, and reindent."
  (interactive)
  (move-end-of-line 1)
  (newline-and-indent))

(global-set-key (kbd "<C-return>") 'sanityinc/newline-at-end-of-line)

;; 简单点回答
(fset 'yes-or-no-p 'y-or-n-p)

;; 24小时制显示时间
(display-time-mode t)
(setq display-time-24hr-format t)

;; undo-tree
(require 'init-undo-tree)
(diminish 'undo-tree-mode)

(provide 'init-editing-utils)
