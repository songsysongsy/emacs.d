;;; cliphist-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (cliphist-select-item cliphist-paste-item cliphist-copy-to-clipboard
;;;;;;  cliphist-read-items cliphist-version) "cliphist" "cliphist.el"
;;;;;;  (22877 33598 564260 966000))
;;; Generated autoloads from cliphist.el

(autoload 'cliphist-version "cliphist" "\


\(fn)" nil nil)

(autoload 'cliphist-read-items "cliphist" "\


\(fn)" t nil)

(autoload 'cliphist-copy-to-clipboard "cliphist" "\
Copy STR into clipboard.

\(fn STR)" nil nil)

(autoload 'cliphist-paste-item "cliphist" "\
Paste selected item into current buffer.

\(fn)" t nil)

(autoload 'cliphist-select-item "cliphist" "\
Select one item from clipboard history.
NUM is passed to `cliphist-select-item-callback'.

\(fn &optional NUM)" t nil)

;;;***

;;;### (autoloads nil nil ("cliphist-clipit.el" "cliphist-flycut.el"
;;;;;;  "cliphist-parcellite.el" "cliphist-pkg.el") (22877 33598
;;;;;;  572783 383000))

;;;***

(provide 'cliphist-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; cliphist-autoloads.el ends here
