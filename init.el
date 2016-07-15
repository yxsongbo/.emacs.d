;; 很早以前，使用下面两行来避免乱码
;; (set-fontset-font "fontset-default"
;; 'gb18030 '("Microsoft YaHei" . "unicode-bmp"))

;; 利用子龙山人的melpa镜像
;;(setq package-archives '(("gnu"   . "http://elpa.zilongshanren.com/gnu/")
;;                         ("melpa" . "http://elpa.zilongshanren.com/melpa/")))


;;冯书的package配置
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa") t)

(package-initialize)
(setq package-unsigned-archives '("gnu"))

(setq org-agenda-files (list "~/Dropbox/doc/jw"
			     "~/Dropbox/doc/diary.org"))
;; use-package
(require 'use-package)



;;Open recently opened file:recentf-mode
;; 下面两行是我自己的配置
(recentf-mode 1)
(global-set-key (kbd "C-x f") 'recentf-open-files)


(require 'ido)
(ido-mode t)

(require 'helm-config)

(require 'evil)
(evil-mode 1)


(define-key global-map "\C-ca" 'org-agenda)
;; chinese-pyim 的简单配置
;; 补充：emacs注释的方法
;; 先选中区域，然后M-x comment-region，会根据mode自动选择注释类型。
(require 'chinese-pyim)
(require 'chinese-pyim-greatdict)
(chinese-pyim-greatdict-enable)
(setq default-input-method "chinese-pyim")
(global-set-key (kbd "C-\\") 'toggle-input-method)
;;选词框设置,可以让字体不能大了可以大些吗不能再大了
;; (setq pyim-use-tooltip 'popup)
;; (setq x-gtk-use-system-tooltips t)
;; 调涨选词框的大小
;; 算了，还是让emacs自己调整选词框大小吧(set-face-attribute 'popup-tip-face nil :height 200)


(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

  
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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/Dropbox/doc/jw" "~/Dropbox/doc/diary.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
