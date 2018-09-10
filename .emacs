(delete-selection-mode 1)		;typing replaces selection
(line-number-mode 1)			;show current position in file
(column-number-mode 1)			;column, too
(fset 'yes-or-no-p 'y-or-n-p)		;enable one letter y/n answers to yes/no
(setq x-select-enable-clipboard t)	;emacs selection goes to clipboard
(toggle-truncate-lines 1)               ;disable visual word wrap
(show-paren-mode 1)                     ;matching parentisis on
(setq show-paren-delay 0)               ;matching parentisis fast
(setq make-backup-files nil)            ;no ~ backup files

;;; when within (..) just indent standard indent and not till (
(add-hook 'c++-mode-hook
          (lambda ()
            (c-set-offset 'arglist-cont-nonempty '+)
            (c-set-offset 'arglist-close 0)))
;;; auto indent on new line (return
(global-set-key (kbd "RET") 'newline-and-indent)
;;; do not reident on special characters
(electric-indent-mode 0)

;;; Install mouse wheel for scrolling
;;(mwheel-install 1)
(xterm-mouse-mode 1)

;;; Turn off beeping
(setq visible-bell t)

;;; Turn off any startup messages
(setq inhibit-startup-message 0)
(setq inhibit-scratch-message nil)

;;; Turn off annoying cordump on tooltip "feature"
(setq x-gtk-use-system-tooltips nil)

;;; Insert spaces instead of tabs
(setq-default indent-tabs-mode nil)

;;; Line numbers and column numbers
(column-number-mode t)
(line-number-mode t)
(global-linum-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (leuven)))
 '(load-home-init-file t t)
 '(package-selected-packages (quote (typescript-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq c-basic-offset 4) ;; default comments at 4 spaces
(c-set-offset 'innamespace 0) ;; namespaces shouldn't cause indentation
(show-paren-mode t) ;; show matching parenthesis
(c-set-offset 'access-label -2) ;; private, public etc. indent at two spaces

;; associate files with correct modes
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode)) ;; treat .h as C++ no C
(add-to-list 'auto-mode-alist '("\\.ejs\\'" . html-mode)) ;; treat .ejs as HTML
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . js-jsx-mode)) ;; treat .jsx as JSX
(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode)) ;; treat .ts as typescript

;; trun off wordwrap
(setq-default truncate-lines t)
;; delete trailing whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; setup MELPA package manager
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(windmove-default-keybindings)

(global-set-key (kbd "C-x p") 'previous-multiframe-window)

(setq confirm-kill-emacs 'y-or-n-p)
