(setq inhibit-startup-message t)
(column-number-mode t)
(keyboard-translate ?\C-h ?\C-?)
(setq-default indent-tabs-mode nil)
(setq default-input-method nil)

(defun my/setup-for-gui-frame (&optional frame)
  "Set up for graphical frames."
  (when (display-graphic-p frame)
    (setq default-frame-alist (append (list '(width . 132) '(height . 44) default-frame-alist)))
    (set-face-attribute 'fixed-pitch nil :family "Ricty")
    (tool-bar-mode -1)
    (menu-bar-mode -1)

    (require 'mozc)
    (setq default-input-method "japanese-mozc")
    (global-set-key [zenkaku-hankaku] 'toggle-input-method)
    (setq pgtk-use-im-context-on-new-connection nil)

    ;; COPY & PASTE
    (setq select-enable-clipboard t)
    (setq select-enable-primary nil)
    (setq save-interprogram-paste-before-kill t)
    (setq yank-pop-change-selection t)
    (setq selection-coding-system 'utf-8)
    ))

(my/setup-for-gui-frame)
(add-hook 'after-make-frame-functions #'my/setup-for-gui-frame)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(package-selected-packages '(markdown-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ricty" :foundry "PfEd" :slant normal :weight regular :height 105 :width normal))))
 )
