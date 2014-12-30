;; show line, column number on minibuffer
(setq column-number-mode t)
(setq line-number-mode t)

;; color settings
(set-face-foreground 'secondary-selection "skyblue")
(set-face-background 'secondary-selection "darkblue")

;; time display settings
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)

;; set default open directory to ~
(setq default-directory "~/")

;; set M-/ as key for Mark Set 
(global-set-key (kbd "M-/") 'set-mark-command)

;; set y meas yes, n means no
(fset 'yes-or-no-p 'y-or-n-p)

;; set auto fill mode to default
(setq-default auto-fill-function 'do-auto-fill)

;; set no indent-tabs-mode, 
(setq-default indent-tabs-mode nil)
(setq default-tab-width 8)
(setq tab-stop-list ())

(setq tab-width 4 indent-tabs-mode t c-basic-offset 4)
;;防止页面滚动时跳动
;;scroll-margin 3 可以在靠近屏幕边沿3行时就开始滚动
;;;scroll-step 1 设置每次都是一行一行向下翻，更有连贯性。
(setq scroll-step 1 scroll-margin 3 scroll-conservatively 10000)

;; 括号匹配
(setq show-paren-mode t)

(global-set-key (kbd "C-j") 'goto-line)

(global-set-key "\C-m" 'newline-and-indent)
(global-set-key (kbd "C-<return>") 'newline)
