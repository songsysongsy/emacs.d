
(require 'xcscope)
(require 'xcscope-autoloads)
(require 'go-mode)
(require 'go-mode-autoloads)
(require 'flymake-go)
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(require 'go-autocomplete)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'ace-jump-mode)
(define-key global-map "\C-j" 'ace-jump-word-mode)
;(define-key global-map "\C-cgl" 'goto-line)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar songsy-minor-mode-keymap
  (let ((map (make-sparse-keymap)))
    (define-key map "l" 'goto-line)
    map)
  "The global sognsy keymap")

(defalias 'songsy-mode-command-prefix songsy-minor-mode-keymap)
(define-key global-map "\C-cg" 'songsy-mode-command-prefix)

;------------------------------------------------------------------------------
(define-minor-mode songsy-minor-mode
  "This  minor mode maps keybindings to make songsy functions more accessible.

Key bindings:
\\{songsy-minor-mode-keymap}"
  nil nil songsy-minor-mode-keymap
  (when songsy-minor-mode
    (run-hooks 'songsy-minor-mode-hooks)
    ))

(defun songsy-setup ()
  "Automatically turns on songsy setup"
  (interactive)
  (add-hook 'c-mode-hook (function cscope-minor-mode))
  (add-hook 'c++-mode-hook (function cscope-minor-mode))
  (songsy-minor-mode)
  )

(songsy-setup)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(provide 'init-songsy)
