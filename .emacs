;; .emacs

;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;; enable visual feedback on selections
;(setq transient-mark-mode t)

;; default to better frame titles
(setq frame-title-format
      (concat  "%b - emacs@" (system-name)))

;; default to unified diffs
(setq diff-switches "-u")

;; always end a file with a newline
;(setq require-final-newline 'query)

;;; uncomment for CJK utf-8 support for non-Asian users
;; (require 'un-define)

;; 日本語をデフォルトにする。
(set-language-environment "Japanese")

;; テキストエンコーディングとしてUTF-8を優先使用
(prefer-coding-system 'utf-8)

;; 起動時のメッセージを非表示
(setq inhibit-startup-message t)

;; 反対側のウィンドウにいけるように
(setq windmove-wrap-around t)

(setq-default tab-width 4)

;; こちらのほうがよいらしい
;; (global-set-key "\C-h" 'delete-backward-char)
(keyboard-translate ?\C-h ?\C-?)

(global-set-key "\M-g" 'goto-line)
(global-set-key "\C-x\C-g" 'goto-line)

(defun my-shell-mode-hook ()
  (setq tab-width 4))

(add-hook 'shell-mode-hook 'my-shell-mode-hook)
(add-hook 'sh-mode-hook
		  '(lambda ()
			 (set-face-foreground 'sh-heredoc-face "steelblue3")))
