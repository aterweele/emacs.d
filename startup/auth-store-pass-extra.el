(require 'password-store)

;;;###autoload
(defun auth-source-pass-copy (entry)
  "Add password for ENTRY to kill ring.

Clear previous password from kill ring.  Pointer to kill ring is
stored in `password-store-kill-ring-pointer'.  Password is cleared
after `password-store-timeout' seconds."
  ;; XXX: this should be the password store(s) in `auth-sources'.
  (interactive (list (password-store--completing-read)))
  (let ((password (auth-source-pass-get 'secret entry)))
    (password-store-clear)
    (kill-new password)
    (setq password-store-kill-ring-pointer kill-ring-yank-pointer)
    (message "Copied %s to the kill ring. Will clear in %s seconds." entry (password-store-timeout))
    (setq password-store-timeout-timer
          (run-at-time (password-store-timeout) nil 'password-store-clear))))


(provide 'auth-store-pass-extra)
