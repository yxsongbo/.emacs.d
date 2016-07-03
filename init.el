;; (set-fontset-font "fontset-default"
;; 'gb18030 '("Microsoft YaHei" . "unicode-bmp"))


;; how to install packages using elpa,MELPA
(setq package-archives '(("gnu"   . "http://elpa.zilongshanren.com/gnu/")
                         ("melpa" . "http://elpa.zilongshanren.com/melpa/")))
(package-initialize)


;;Open recently opened file:recentf-mode
;; 下面两行是我自己的配置
(recentf-mode 1)
(global-set-key (kbd "C-x f") 'recentf-open-files)


(require 'ido)
(ido-mode t)

(require 'helm-config)

(require 'evil)
(evil-mode 1)

(require 'chinese-pyim)
(require 'chinese-pyim-greatdict)
(chinese-pyim-greatdict-enable)
(setq default-input-method "chinese-pyim")
(global-set-key (kbd "C-\\") 'toggle-input-method)
;;选词框设置,可以让字体不能大了可以大些吗不能再大了
(setq pyim-use-tooltip 'popup)
(setq x-gtk-use-system-tooltips t)

;;(require 'org-bullets)
;;(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

  
;;(load-theme 'spacemacs-dark t)




;;有道词典
;; Enable Cache
;;(setq url-automatic-caching t)

;; Example Key binding
;;(global-set-key (kbd "C-c y") 'youdao-dictionary-search-at-point)
;;(global-set-key (kbd "C-c s") 'youdao-dictionary-play-voice-at-point)

;; Integrate with popwin-el (https://github.com/m2ym/popwin-el)
;; (push "*Youdao Dictionary*" popwin:special-display-config)

;; Set file path for saving search history
;; (setq youdao-dictionary-search-history-file "~/.emacs.d/.youdao")

;; Enable Chinese word segmentation support (支持中文分词)
;; (setq youdao-dictionary-use-chinese-word-segmentation t)
