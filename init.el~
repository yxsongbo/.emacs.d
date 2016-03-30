;; (set-fontset-font "fontset-default"
;; 'gb18030 '("Microsoft YaHei" . "unicode-bmp"))


;; how to install packages using elpa,MELPA
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (add-to-list
   'package-archives 
   '("org" . "http://orgmode.org/elpa/") t )
  (package-initialize))

;; use-package
(require 'use-package)
(setq use-package-alwalys-ensure nil)

;;Open recently opened file:recentf-mode
;; 下面两行是我自己的配置
;;(recentf-mode 1)
;;(global-set-key (kbd "C-c r") 'recentf-open-files)
(use-package recentf
  :ensure nil
  :bind (("C-x f" . recentf-open-files))
  :config
  (setq recentf-auto-cleanup 'never)
  (recentf-mode 1)
  (setq recentf-max-saved-items 99)
  (setq recentf-max-menu-items 99)
  (setq recentf-exclude
        '("COMMIT" "autoloads" "archive-contents" "eld" "newsrc"
          ".recentf" "emacs-font-size.conf"))
  (setq recentf-menu-filter 'eh-recentf-buffer-filter)
  (setq recentf-show-file-shortcuts-flag nil)

  (defun eh-recentf-buffer-filter (l)
    (let ((index 0)
          filtered-list element list name recentf-string)
      (dolist (elt l (nreverse filtered-list))
        (setq index (1+ index)
              element (recentf-menu-element-value elt)
              list (reverse (split-string element "/"))
              name (if (> (length (nth 0 list)) 0)
                       (format "%s" (nth 0 list))
                     (format "%s/" (nth 1 list)))
              recentf-string (format "[%2s]:  %-30s (%s)" index name element))
        (push (recentf-make-menu-element recentf-string element) filtered-list))))

  ;; 自动保存recentf文件。
  (add-hook 'find-file-hook 'recentf-save-list))

(require 'ido)
(ido-mode t)

(require 'helm-config)

(require 'evil)
(evil-mode 1)

(require 'chinese-pyim)
(setq default-input-method "chinese-pyim")
(global-set-key (kbd "C-\\") 'toggle-input-method)
(setq pyim-dicts
      '((:name "dict1" :file "C:/Users/yxson/Dropbox/Temp/rime/pyim-bigdict.pyim" :coding utf-8-unix :dict-type pinyin-dict)))
(setq-default pyim-punctuation-half-width-functions
                '(pyim-probe-punctuation-line-beginning
                  pyim-probe-punctuation-after-punctuation))

(require 'chinese-fonts-setup)

  
(load-theme 'spacemacs-dark t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (youdao-dictionary use-package spacemacs-theme solarized-theme icicles hexrgb helm frame-fns faces+ evil doremi-cmd color-theme-modern color-theme chinese-pyim chinese-fonts-setup))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;有道词典
;; Enable Cache
(setq url-automatic-caching t)

;; Example Key binding
(global-set-key (kbd "C-c y") 'youdao-dictionary-search-at-point)
(global-set-key (kbd "C-c s") 'youdao-dictionary-play-voice-at-point)

;; Integrate with popwin-el (https://github.com/m2ym/popwin-el)
;; (push "*Youdao Dictionary*" popwin:special-display-config)

;; Set file path for saving search history
;; (setq youdao-dictionary-search-history-file "~/.emacs.d/.youdao")

;; Enable Chinese word segmentation support (支持中文分词)
;; (setq youdao-dictionary-use-chinese-word-segmentation t)
