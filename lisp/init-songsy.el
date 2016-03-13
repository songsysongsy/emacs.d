
(require 'xcscope)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'ace-jump-mode)
(define-key global-map "\C-cj" 'ace-jump-word-mode)
(define-key global-map "\C-cgl" 'goto-line)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar songsy-minor-mode-keymap
  (let ((map (make-sparse-keymap)))

    (define-key map "ss" 'cscope-find-this-symbol)
    (define-key map "sd" 'cscope-find-global-definition)
    map)
  "The global sognsy keymap")

(defalias 'songsy-mode-command-prefix songsy-minor-mode-keymap)
;(define-key global-map "\C-j" 'songsy-mode-command-prefix)

;------------------------------------------------------------------------------
;;;###autoload
(define-minor-mode songsy-minor-mode
  "This songsy minor mode maps songsy keybindings to make songsy
functions more accessible.

Key bindings:
\\{songsy-minor-mode-keymap}"
  nil nil songsy-minor-mode-keymap
  (when songsy-minor-mode
;    (run-hooks 'songsy-minor-mode-hooks)
    ))

;;;###autoload
(defun songsy-setup ()
  "Automatically turns on songsy-minor-mode when editing C and
C++ sources"
  (interactive)
;  (add-hook 'c-mode-hook (function cscope-minor-mode))
;  (add-hook 'c++-mode-hook (function cscope-minor-mode))

  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(provide 'init-songsy)

