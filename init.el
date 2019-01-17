;; package management
(require 'package)
;; no ssl list of shame:
;(push '("org" . "http://orgmode.org/elpa/") package-archives)

(package-initialize)

;; other loads are by category
(push "~/.emacs.d/startup/" load-path)

;;; evil-mode
(require 'evil)

;; ;; only activate evil in buffers that seem to be for text editing
;; (mapc
;;  (lambda (hook) (add-hook hook (lambda () (evil-local-mode))))
;;  '(prog-mode-hook text-mode-hook))

;; ;; and deactivate by default for lisps
(setq lisp-modes-hooks '(lisp-mode-hook clojure-mode-hook cider-repl-mode-hook))
;; (mapc (lambda (hook) (add-hook hook (lambda () (evil-emacs-state nil))))
;;       lisp-modes-hooks)
;; TODO: find syntactic abstraction for "do for all hooks"

(mapc (lambda (hook)
        (add-hook hook #'enable-paredit-mode)
        (add-hook hook #'aggressive-indent-mode))
      lisp-modes-hooks)

(with-eval-after-load 'paredit
  (define-key paredit-mode-map [remap reposition-window] 'paredit-recenter-on-defun))

;;; mail client
;(require 'notmuch)
;;; gmail-like double-clicking on message to show/hide it
;(define-key
;  notmuch-show-mode-map
;  (kbd "<double-mouse-1>")
;  'notmuch-show-toggle-message)

;; TODO: move all binds to their own section?
(global-set-key (kbd "<mouse-9>") 'next-buffer)
(global-set-key (kbd "<mouse-8>") 'previous-buffer)
(global-set-key (kbd "M-/") 'hippie-expand)

(require 'helm-config)
(helm-mode 1)
(define-key global-map [remap find-file] 'helm-find-files)
(define-key global-map (kbd "C-c o") 'occur)
(define-key global-map [remap occur] 'helm-occur)
(define-key global-map [remap list-buffers] 'helm-buffers-list)
(global-set-key (kbd "M-x") 'helm-M-x)

;; wouldn't it make sense for the key with a little picture of a
;; dropdown to open a little dropdown?
(global-set-key (kbd "<menu>") 'menu-bar-open)

;; Shift-arrows to move between windows
(windmove-default-keybindings)
;; this conflicts with Org, see (info "(Org)Conflicts")
(add-hook 'org-shiftup-final-hook 'windmove-up)
(add-hook 'org-shiftleft-final-hook 'windmove-left)
(add-hook 'org-shiftdown-final-hook 'windmove-down)
(add-hook 'org-shiftright-final-hook 'windmove-right)

;; my custom function for Wiktionary lookup.
;; TODO: move it to its own file somewhere
(defun wikt (beg end)
  "Wiktionary lookup"
  (interactive "r")
  (let ((word (if (use-region-p)
                  (buffer-substring-no-properties beg end)
                (thing-at-point 'word t))))
    (browse-url
     (format "https://en.wiktionary.org/wiki/%s" word))))
;; and bind to evil's zw
;; TODO: maybe bind to something non-evil so that I can get wikt easily outside of evil
(define-key evil-normal-state-map (kbd "zw") #'wikt)



;; I love you, FSF, but I'm not *in* love with you
(defun display-startup-echo-area-message ()
  (let ((l '("BSD's userland is better."
             "The world isn't ready for free software."
             "rms has already lost.")))
    (message (nth (random (length l)) l))))

(require 'secret)

;; other settings in custom
(setq custom-file "~/.emacs.d/etc/custom.el")
(load custom-file)

;; emoji testing snippet
;(dotimes (i (- #x1F2FF #x1F200)) (insert-char (+ i #x1F200)))

;; Org
;; TODO: move to Customize.  Unfortunately, Customize always reports
;; it as "changed outside Customize"
(setq org-mode-hook '(auto-fill-mode))

;; set PATH properly using the exec-path-from-shell package.
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; use ggtags.
(add-hook 'csharp-mode-hook
          (lambda () (ggtags-mode 1)))
(add-hook 'c-mode-hook
          (lambda () (ggtags-mode 1)))
;; also for C#: use omnisharp.
;; (add-hook 'csharp-mode-hook 'omnisharp-mode)
;; don't turn on omnisharp; ggtags is good enough for what I do.

(projectile-mode 1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(helm-projectile-on)

;;; SQL
(load-library "sql-servers-autogen.el.gpg")

;; Postgres doesn't take a password via command-line flag:
;; https://stackoverflow.com/a/26743233
(require 'sql)
(defun sql-set-pgpassword
    (&rest _ignored)
  (setenv "PGPASSWORD" (default-value 'sql-password)))
(advice-add 'sql-product-interactive :before #'sql-set-pgpassword)

(defun sql-connect-better (name)
  "Like `sql-connect' but fixed so that `sql-product' and buffer name are set automatically.
NAME is the name of the connection in `sql-connection-alist'.

Apapted from https://www.emacswiki.org/emacs/SqlMode."
  (interactive (list (sql-read-connection "Connection: " nil '(nil))))
  (setq sql-product (or (cadr (cadr (assoc 'sql-product (cdr (assoc name sql-connection-alist)))))
                        sql-product))
  (sql-connect name name))

;; Polaris projects
(defun polaris-with-environment (f &rest args)
  (if (boundp 'polaris-env)
      (let ((process-environment (cons (format "POLARIS_ENV=%s" polaris-env) process-environment)))
        (apply f args))
    (apply f args)))
(advice-add 'nrepl-start-server-process :around #'polaris-with-environment)

;; Presentations
(defun selected-frame-presentation-start ()
  "Set the :height of the 'default face to 200."
  (interactive)
  (set-face-attribute 'default (selected-frame) :height 200))

(global-set-key (kbd "C-x g") 'magit-status)

;; disabled functions cruft
(put 'narrow-to-page 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'TeX-narrow-to-group 'disabled nil)
(put 'LaTeX-narrow-to-environment 'disabled nil)
