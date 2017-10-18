;==============================
; common
;==============================
;;Set frame title
(setq frame-title-format
   (concat "%b - emacs@" system-name))

;;Show file name on title bar
(setq frame-title-format (format "emacs@%s : %%f" (system-name)))

;;Don't use location-dependent setting
(set-locale-environment nil)

;;Don't show startup-message
(setq inhibit-startup-message t)

;;Don't generate back-up file automatically
;;(setq make-backup-files nil)

;;When finishing, remove auto-save file
(setq delete-auto-save-files t)

(setq make-backup-files nil)
(setq auto-save-default nil)

;;Highlight a pair of bracket
;;If the pair cannot be shown on the display at the same time,
;;highlight its inside.
(show-paren-mode 1)
(setq show-paren-style 'mixed)

;;Don't show toolbar
(tool-bar-mode 0)

;;Show the number of line cursor is on
(setq line-number-mode t)

;;Avoid a character corruption of Japanese info
(auto-compression-mode t)

;;Show the scroll bar on the right side
(set-scroll-bar-mode 'right)

;;Ctrl+z works as UNDO
(global-set-key "\C-z" 'undo)

;;Wheel mouse works well
(mouse-wheel-mode t)
(setq mouse-wheel-follow-mouse t)

;;Color reserved keywords
(global-font-lock-mode t)

;;C-h works as Backspace
;;C-c h works as HELP
(keyboard-translate ?\C-h ?\C-?)
(global-set-key "\C-h" nil)
(global-set-key "\C-ch" 'help-command)

;;Move to next window
(define-key global-map (kbd "C-M-n") 'next-multiframe-window)

;;Move to previous window
(define-key global-map (kbd "C-M-p") 'previous-multiframe-window)

;;Magnfy history size
(setq history-length 10000)

;;If a file includes #! at the top, make it executable.
(add-hook 'after-save-hook
          'executable-make-buffer-file-executable-if-script-p)

;;Show function name you are editting
(which-function-mode 1)

;;Close bracket automatically
(electric-pair-mode 1)

;===========================================================
;Frame size, font, window position etc.
;===========================================================
(setq initial-frame-alist
  (append
    (list
      '(foreground-color . "dodger blue")
      '(background-color . "black")
      '(border-color . "black")
      '(mouse-color  . "white")
      '(cursor-color . "red")
      '(width . 120)
      '(height . 100)
      '(top . 0)
      '(left . 0)
    )
    initial-frame-alist
  )
)

;==================================
; For C, C++ programming
;==================================
(add-hook
  'c-mode-common-hook
  (lambda ()
    (c-set-style "bsd")
    (setq c-basic-offset 2)
    (setq c-tab-always-indent t)
    (setq tab-width 2)
    (setq indent-tabs-mode nil) ; Use space for indent, not tab
;    (c-set-offset 'innamespace '+)
    (c-set-offset 'arglist-close 0)
    (define-key c-mode-base-map "\C-m" 'newline-and-indent)
;    (c-toggle-auto-newline 1) ; auto indent
;    (setq c-auto-newline t)   ; auto indent
  )
)

;===========================================================
; Tex
;===========================================================

;; 拡張子が .tex なら yatex-mode に
(setq auto-mode-alist
  (cons (cons "\\.tex$" 'yatex-mode) auto-mode-alist))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)

;; YaTeX が利用する内部コマンドを定義する
(setq tex-command "platex2pdf") ;; 自作したコマンドを
(cond
  ((eq system-type 'gnu/linux) ;; GNU/Linux なら
    (setq dvi2-command "evince")) ;; evince で PDF を閲覧
  ((eq system-type 'darwin) ;; Mac なら
    (setq dvi2-command "open -a Preview"))) ;; プレビューで
(add-hook 'yatex-mode-hook '(lambda () (setq auto-fill-function nil)))

;===========================================================
; Octave mode
;===========================================================
(autoload 'octave-mode "octave-mod" nil t)
(setq auto-mode-alist
  (cons '("\\.m$" . octave-mode) auto-mode-alist))

(add-hook 'octave-mode-hook
  (lambda ()
    (abbrev-mode 1)
    (auto-fill-mode 1)
    (if (eq window-system 'x)
      (font-lock-mode 1))))

;===========================================================
; CUDA
;===========================================================
(setq auto-mode-alist(cons'("\.cu$" . c-mode) auto-mode-alist))
