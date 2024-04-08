;;; init-locales.el --- Configure default locale -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(defun sanityinc/locale-var-encoding (v)
  "Return the encoding portion of the locale string V, or nil if missing."
  (when v
    (save-match-data
      (let ((case-fold-search t))
        (when (string-match "\\.\\([^.]*\\)\\'" v)
          (intern (downcase (match-string 1 v))))))))

(dolist (varname '("LC_ALL" "LANG" "LC_CTYPE"))
  (let ((encoding (sanityinc/locale-var-encoding (getenv varname))))
    (unless (memq encoding '(nil utf8 utf-8))
      (message "Warning: non-UTF8 encoding in environment variable %s may cause interop problems with this Emacs configuration." varname))))

(when (fboundp 'set-charset-priority)
  (set-charset-priority 'unicode))
(prefer-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)
(unless (eq system-type 'windows-nt)
  (set-selection-coding-system 'utf-8))

(delete-selection-mode 1) ;;delete as other ide
(setq mac-option-modifier 'meta
      mac-command-modifier 'super)
(global-set-key (kbd "s-a") 'mark-whole-buffer) ;;对应Windows上面的Ctrl-a 全选
(global-set-key (kbd "s-c") 'kill-ring-save) ;;对应Windows上面的Ctrl-c 复制
(global-set-key (kbd "s-s") 'save-buffer) ;; 对应Windows上面的Ctrl-s 保存
(global-set-key (kbd "s-v") 'yank) ;对应Windows上面的Ctrl-v 粘贴
(global-set-key (kbd "s-z") 'undo) ;对应Windows上面的Ctrol-z 撤销
(global-set-key (kbd "s-x") 'kill-region) ;对应Windows上面的Ctrol-x 剪切

(unless (package-installed-p 'undo-tree)
  (package-refresh-contents)
  (package-install 'undo-tree))
(require 'undo-tree) ;; 安装 undo-tree
(global-undo-tree-mode 1);; 可以使用 M-x package-install RET undo-tree RET 安装
(global-set-key (kbd "s-y") 'undo-tree-redo) ;; 设置重做（redo）的快捷键

(unless (package-installed-p 'solidity-mode)
  (package-refresh-contents)
  (package-install 'solidity-mode))
(require 'solidity-mode)
(setq solidity-comment-style 'slash)


(provide 'init-locales)
;;; init-locales.el ends here
