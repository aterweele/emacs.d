;; package management
(require 'package)
;; no ssl list of shame:
;(push '("org" . "http://orgmode.org/elpa/") package-archives)

(package-initialize)

;; other loads are by category
(push "~/.emacs.d/startup/" load-path)
(push "~/src/monroe" load-path)

(setq lisp-modes-hooks
      '(lisp-mode-hook
        scheme-mode-hook
        emacs-lisp-mode-hook
        clojure-mode-hook cider-repl-mode-hook))
(mapc (lambda (hook)
        (add-hook hook #'enable-paredit-mode))
      lisp-modes-hooks)

(with-eval-after-load 'paredit
  (define-key paredit-mode-map
    [remap reposition-window]
    'paredit-recenter-on-defun))

(require 'monroe)
(add-hook 'clojure-mode-hook 'clojure-enable-monroe)

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

(require 'ivy)
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(define-key global-map [remap list-buffers] 'ivy-switch-buffer)
(global-set-key (kbd "C-s") 'swiper-isearch)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(require 'counsel)
(counsel-mode)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(define-key global-map (kbd "C-c o") 'occur)
(define-key global-map [remap occur] 'swiper-isearch-thing-at-point)

;; wouldn't it make sense for the key with a little picture of a
;; dropdown to open a little dropdown?
(global-set-key (kbd "<menu>") 'menu-bar-open)

(global-set-key (kbd "C-x g") 'magit-status)

;; Shift-arrows to move between windows
(windmove-default-keybindings)
;; this conflicts with Org, see (info "(Org)Conflicts")
(add-hook 'org-shiftup-final-hook 'windmove-up)
(add-hook 'org-shiftleft-final-hook 'windmove-left)
(add-hook 'org-shiftdown-final-hook 'windmove-down)
(add-hook 'org-shiftright-final-hook 'windmove-right)

;; my custom function for Wiktionary lookup.
;; TODO: move it to its own file somewhere
(defun browse-word-at-point-wiktionary (beg end)
  "Wiktionary lookup"
  (interactive "r")
  (let ((word (if (use-region-p)
                  (buffer-substring-no-properties beg end)
                (thing-at-point 'word t))))
    (browse-url
     (format "https://en.wiktionary.org/wiki/%s" word))))



;; I love you, FSF, but I'm not *in* love with you
(defun display-startup-echo-area-message ()
  (let ((l '("BSD's userland is better."
             "The world isn't ready for free software."
             "rms has already lost.")))
    (message (nth (random (length l)) l))))

;; texify doesn't seem to be installed with texlive.
(defun flymake-get-tex-args (fname)
  ;; This is what TeX-command does. Unfortunately it does not yield a list.
  ;; (TeX-command-expand (nth 1 (assoc "LaTeX" TeX-command-list))
  ;;                     ;; #'TeX-master-file
  ;;                     fname)

  ;; The following is based on the above and on
  ;; https://www.emacswiki.org/emacs/FlymakeTex#toc2.
  (list "xelatex"
        (list "-file-line-error"         ; flymake can kinda parse this
              "-draftmode"               ; compile faster, sans images.
              "-interaction=nonstopmode" ; actually halt
              fname))
  ;; compilation is redirected to _flymake.pdf, so remember to compile
  ;; for real to generate the real .pdf.
  )

(require 'secret)

;; other settings in custom
(setq custom-file "~/.emacs.d/etc/custom.el")
(load custom-file)

(defun recenter-top (_ignored) (recenter 0))
(advice-add 'forward-page :after #'recenter-top)

(with-eval-after-load 'paredit
  (define-key paredit-mode-map
    [remap reposition-window] 'paredit-recenter-on-defun))

;; emoji testing snippet
;(dotimes (i (- #x1F2FF #x1F200)) (insert-char (+ i #x1F200)))

;; Org
;; TODO: move to Customize.  Unfortunately, Customize always reports
;; it as "changed outside Customize"
(setq org-mode-hook '(auto-fill-mode flyspell-mode))
;; (setq org-mode-hook '(visual-line-mode variable-pitch-mode))

;;; switching to ebdb
;; (bbdb-initialize 'gnus 'message)
;; (bbdb-mua-auto-update-init 'gnus 'message)
(require 'ebdb-gnus)
(require 'ebdb-message)

;; projectile
(projectile-mode 1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; god-mode experiment
(global-set-key (kbd "<escape>") 'god-mode-all)
(with-eval-after-load 'god-mode
  (define-key god-local-mode-map (kbd ".") 'repeat))

;; Presentations
(defun selected-frame-presentation-start ()
  "Set the :height of the 'default face to 200."
  (interactive)
  (set-face-attribute 'default (selected-frame) :height 200))

(global-set-key (kbd "C-c M-p c") 'password-store-copy)

;; disabled functions cruft
(put 'narrow-to-page 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'TeX-narrow-to-group 'disabled nil)
(put 'LaTeX-narrow-to-environment 'disabled nil)

(require 'nnreddit)
