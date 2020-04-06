(custom-set-variables
  ;; custom-set-variables was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 '(auto-raise-tool-bar-buttons t t)
 '(auto-resize-tool-bars t t)
 '(case-fold-search t)
 '(current-language-environment "UTF-8")
 '(custom-enabled-themes (quote (tango-dark)))
 '(default-input-method "rfc1345")
 '(menu-bar-mode t)
 '(scroll-bar-mode (quote right))
 '(speedbar-fetch-etags-command "etags" t)
 '(speedbar-ignored-modes nil t)
 '(speedbar-update-flag t t)
 '(tool-bar-button-margin 1 t)
 '(emulate-mac-us-keyboard-mode t)
 '(fill-column 80)
 '(idlwave-block-indent 2)
 '(idlwave-code-comment ";")
 '(idlwave-begin-line-comment ";;")
 '(idlwave-completion-case (quote ((routine . preserve) (keyword . preserve) (class . preserve) (method . preserve))))
 '(idlwave-continuation-indent 4)
 '(idlwave-end-offset -2)
 '(idlwave-expand-generic-end t)
 '(idlwave-hanging-indent nil)
 '(load-path (cons "~/software/share/emacs/site-lisp" load-path))
 '(imenu-sort-function (quote imenu--sort-by-name))
 '(make-backup-files nil)
 '(transient-mark-mode t)
 '(which-func-modes (quote (emacs-lisp-mode c-mode c++-mode perl-mode cperl-mode makefile-mode sh-mode fortran-mode f90-mode ada-mode idlwave-mode)))
 '(which-function-mode t)
 '(tool-bar-mode nil nil (tool-bar)))
(custom-set-faces
  ;; custom-set-faces was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 )

(column-number-mode 1)
(add-hook 'idlwave-mode-hook 'imenu-add-menubar-index)

(set-face-foreground 'font-lock-comment-face "red")

(defconst my-c-style
  '((c-tab-always-indent           . t)
    (c-comment-only-line-offset    . 0)
    (c-hanging-braces-alist        . ((substatement-open after)
				      (brace-list-open)))
    (c-hanging-colons-alist        . ((inher-intro)
				      (case-label after)
				      (label after)
				      (access-label after)))
    (c-cleanup-list                . (scope-operator
				      empty-defun-braces
				      defun-close-semi))
    (c-offsets-alist               . ((arglist-close     . c-lineup-arglist)
				      (defun-block-intro . 2)
				      (substatement      . 2)
				      (substatement-open . 0)
				      (statement-block-intro . 2)
				      (statement-case-intro . 2)
				      (arglist-cont-nonempty . 2)
							           (statement-cont . 2)
								   (member-init-intro . 2)
								   (case-label        . 4)
								   (block-open        . 0)
								   (arglist-intro    . 2)
					         (access-label       . -2)
						 (inline-open       . 0)
						 (innamespace       . 2)
						 (knr-argdecl-intro . -)))
    (c-echo-syntactic-information-p . t)
    )
  "My C Programming Style")

;; Load c++ mode for .c and .h files
(setq auto-mode-alist
      (cons '("\\.c\\'" . c++-mode) auto-mode-alist))

(add-to-list 'auto-mode-alist '("\\.cu$" . c-mode))
(add-to-list 'auto-mode-alist '("\\.F90$" . fortran-mode))
