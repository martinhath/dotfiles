;; stuff
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("75c0b1d2528f1bce72f53344939da57e290aa34bea79f3a1ee19d6808cb55149" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; Hide ui stuff
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(set-fringe-mode 0)

(require 'package)

;; haskell-mode
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			("marmalade" . "https://marmalade-repo.org/packages/")
			("melpa" . "http://melpa.org/packages/")))
(add-hook 'haskell-mode-hook 'haskell-indentation-mode)

;; Custom bindings
(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
)
(global-set-key (kbd "C-c l") 'duplicate-line)


;; Color theme stuff
(require 'dash)
(require 's)
(-each
 (-map
  (lambda (item)
    (format "~/.emacs.d/elpa/%s" item))
  (-filter
   (lambda (item) (s-contains? "theme" item))
   (directory-files "~/.emacs.d/elpa")))
 (lambda (item)
   (add-to-list 'custom-theme-load-path item)))

(load-theme 'base16-tomorrow-dark t)

(set-face-attribute 'default (selected-frame) :height 100)
