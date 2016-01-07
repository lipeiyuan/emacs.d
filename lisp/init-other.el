;; 都用emacs了，就别再整这些破菜单工具栏啥的了
(menu-bar-mode 0)
(set-scroll-bar-mode nil)
(tool-bar-mode 0)

;; 复制粘贴
(global-set-key (kbd "C-z") 'set-mark-command)

;; 注释
(global-set-key (kbd "C-c C-/") 'comment-or-uncomment-region)

;; 光标不要闪，老夫眼睛都快瞎了
(blink-cursor-mode 0)

;; 替换字符串
(global-set-key (kbd "C-c r") 'replace-string)

;; 自动刷新文件内容
(global-auto-revert-mode)
(setq global-auto-revert-non-file-buffers t
      auto-revert-verbose t)

;; 回车之后自动indent
(global-set-key (kbd "RET") 'newline-and-indent)
(defun sanityinc/newline-at-end-of-line ()
  "Move to end of line, enter a newline, and reindent."
  (interactive)
  (move-end-of-line 1)
  (newline-and-indent))

(global-set-key (kbd "<C-return>") 'sanityinc/newline-at-end-of-line)

;; 向前删一词
(global-set-key (kbd "C-j") 'backward-kill-word)

;; 简单点回答
(fset 'yes-or-no-p 'y-or-n-p)

;; 24小时制显示时间
(display-time-mode t)
(setq display-time-24hr-format t)

;; 标题栏显示文件路径
(setq frame-title-format
      '("%S" (buffer-file-name "%f"
                               (dired-directory dired-directory "%b"))))

;; buffer名字唯一
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;; 窗口移动
(global-set-key (kbd "C-c w k") 'windmove-up)
(global-set-key (kbd "C-c w j") 'windmove-down)
(global-set-key (kbd "C-c w h") 'windmove-left)
(global-set-key (kbd "C-c w l") 'windmove-right)

;; 编码
(prefer-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8-unix)

;; 设置一些变量的值
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
 visible-bell t
 inhibit-startup-message t
 auto-save-default nil)

(provide 'init-other)
