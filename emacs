;; show line, column number on minibuffer
(add-to-list 'load-path "~/.emacs.d/settings")
(add-to-list 'load-path "~/.emacs.d/cl-lib")
(add-to-list 'load-path "~/.emacs.d/xcscope")
(add-to-list 'load-path "~/.emacs.d/tabbar")
(add-to-list 'load-path "~/.emacs.d/sr-speedbar")
(add-to-list 'load-path "~/.emacs.d/highlight")
;; (add-to-list 'load-path "~/.emacs.d/helm")


(autoload 'idle-highlight-mode "idle-highlight" "highlight the word the point is on" t)
(add-hook 'find-file-hook 'idle-highlight-mode)

;; semantic
(require 'cedet) 
;; (semantic-load-enable-code-helpers) 
(global-set-key [(control tab)] 'semantic-ia-complete-symbol-menu)
(custom-set-variables
 '(semantic-default-submodes (quote (global-semantic-decoration-mode
                                     global-semantic-idle-completions-mode
                                     global-semantic-idle-scheduler-mode
                                     global-semanticdb-minor-mode
                                     global-semantic-idle-summary-mode
                                     global-semantic-mru-bookmark-mode)))
 '(semantic-idle-scheduler-idle-time 3))
(semantic-mode)
;; smart complitions
(require 'semantic/ia)
(setq-mode-local c-mode semanticdb-find-default-throttle
                                  '(project unloaded system
                                            recursive))
(setq-mode-local c++-mode semanticdb-find-default-throttle
                                  '(project unloaded system
                                            recursive))
;;;; Include settings
(require 'semantic/bovine/gcc)
(require 'semantic/bovine/c)

;; helm
;;(require 'helm-config)
;;(helm-mode 1)
;;(define-key global-map [remap find-file] 'helm-find-files)
;;(define-key global-map [remap occur] 'helm-occur)
;;(define-key global-map [remap list-buffers] 'helm-buffers-list)
;;(define-key global-map [remap dabbrev-expand] 'helm-dabbrev)
;;(unless (boundp 'completion-in-region-function)
;;  (define-key lisp-interaction-mode-map [remap completion-at-point] 'helm-lisp-completion-at-point)
;;  (define-key emacs-lisp-mode-map       [remap completion-at-point] 'helm-lisp-completion-at-point))
;;(global-set-key (kbd "C-x f") 'helm-find-files)

;; tabbar
(require 'tabbar)
(add-hook 'after-init-hook '(lambda () (tabbar-mode)))

;; sr-sppedbar
(require 'sr-speedbar)
(add-hook 'after-init-hook '(lambda () (sr-speedbar-toggle)));;开启程序即启用

;; xcscope
(require 'xcscope)
(cscope-setup)

;; set ido-mode open
(ido-mode t)

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

;; switch to other window
(global-unset-key [C-x x])
(global-unset-key [C-x C-x])
(global-set-key (kbd "C-x C-x") 'other-window)

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

(global-set-key (kbd "M-s") 'isearch-forward-symbol-at-point)


;; modes
(c++-mode)
