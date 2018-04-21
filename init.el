;; package management
(require 'package)
;; no ssl list of shame:
;(push '("org" . "http://orgmode.org/elpa/") package-archives)

(package-initialize)

;; other loads are by category
(push "~/.emacs.d/startup/" load-path)

;; evil-mode
(require 'evil)
;; only activate evil in buffers that seem to be for text editing
(mapc (lambda (hook) (add-hook hook (lambda () (evil-local-mode))))
      '(prog-mode-hook text-mode-hook))
;; use paredit instead of evil for editing lisps.
(mapc (lambda (hook) (add-hook hook (lambda ()
                                      (evil-emacs-state nil)
                                      (paredit-mode))))
      '(lisp-mode-hook scheme-mode-hook emacs-lisp-mode-hook))

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
(global-set-key (kbd "C-c o") 'occur)
(define-key global-map [remap occur] 'helm-occur)
(define-key global-map [remap list-buffers] 'helm-buffers-list)
(global-set-key (kbd "M-x") 'helm-M-x)

;; wouldn't it make sense for the key with a little picture of a
;; dropdown to open a little dropdown?
(global-set-key (kbd "<menu>") 'menu-bar-open)

(global-set-key (kbd "C-x g") 'magit-status)

;; Shift-arrows to move between windows
(windmove-default-keybindings)

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

;; from wasamasa's init.org.
;; TODO: it sure would be nice if a package provided this
;; FIXME: switch to wayland and stop using x11
(defun wasamasa-x-urgency-hint ()
  "set the X11 urgency hint on the X11 window from which the function
was called"
  (let* ((hints "WM_HINTS")
         (wm-hints (append (x-window-property hints nil hints nil nil t) nil))
         (flags (car wm-hints)))
    (setcar wm-hints (logior flags (lsh 1 8)))
    (x-change-window-property hints wm-hints nil hints 32 t)))
(add-hook 'erc-echo-notice-always-hook
          (lambda (string servmess buffer sender) (wasamasa-x-urgency-hint)))

(defun my-play-sound (file)
  "play the wav in `file'"
  ;(start-process "sound-proc" nil "aplay" file)
  (make-process
   :name "sound-proc"
   :buffer nil
   :command '("/usr/bin/aplay" "~/.emacs.d/etc/sounds/bell.wav"))
  )

;; I love you, FSF, but I'm not *in* love with you
(defun display-startup-echo-area-message ()
  (let ((l '("BSD's userland is better."
             "The world isn't ready for free software."
             "rms has already lost.")))
    (message (nth (random (length l)) l))))

;; flymake/pdflatex have to be forcibly mated
;(defun flymake-get-tex-args (fname)
;  (list "pdflatex"
;        (list "-file-line-error"         ; flymake can kinda parse this
;              "-draftmode"               ; don't make an _flymake.pdf
;              "-interaction=nonstopmode" ; actually halt
;              fname)))

(require 'secret)

;; other settings in custom
(setq custom-file "~/.emacs.d/etc/custom.el")
(load custom-file)

(defun recenter-top (_ignored) (recenter 0))
(advice-add 'forward-page :after #'recenter-top)

;; emoji testing snippet
;(dotimes (i (- #x1F2FF #x1F200)) (insert-char (+ i #x1F200)))

;; Org
;; TODO: move to Customize.  Unfortunately, Customize always reports
;; it as "changed outside Customize"
;;(setq org-mode-hook '(auto-fill-mode flyspell-mode))
(setq org-mode-hook '(visual-line-mode variable-pitch-mode))

(bbdb-initialize 'gnus 'message)
(bbdb-mua-auto-update-init 'gnus 'message)

;; projectile
(projectile-global-mode)
(require 'helm-projectile)
(helm-projectile-on)

;; disabled functions cruft
(put 'narrow-to-page 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'TeX-narrow-to-group 'disabled nil)
(put 'LaTeX-narrow-to-environment 'disabled nil)
