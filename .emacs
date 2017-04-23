(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (wombat)))
 '(custom-safe-themes
   (quote
    ("7356632cebc6a11a87bc5fcffaa49bae528026a78637acd03cae57c091afd9b9" "aae95fc700f9f7ff70efbc294fc7367376aa9456356ae36ec234751040ed9168" "ba9be9caf9aa91eb34cf11ad9e8c61e54db68d2d474f99a52ba7e87097fa27f5" "3ff96689086ebc06f5f813a804f7114195b7c703ed2f19b51e10026723711e33" "8ec2e01474ad56ee33bc0534bdbe7842eea74dccfb576e09f99ef89a705f5501" "28ec8ccf6190f6a73812df9bc91df54ce1d6132f18b4c8fcc85d45298569eb53" "ab04c00a7e48ad784b52f34aa6bfa1e80d0c3fcacc50e1189af3651013eb0d58" "a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "6952b5d43bbd4f1c6727ff61bc9bf5677d385e101433b78ada9c3f0e3787af06" "4cbec5d41c8ca9742e7c31cc13d8d4d5a18bd3a0961c18eb56d69972bbcf3071" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "bc40f613df8e0d8f31c5eb3380b61f587e1b5bc439212e03d4ea44b26b4f408a" "9122dfb203945f6e84b0de66d11a97de6c9edf28b3b5db772472e4beccc6b3c5" "a2e7b508533d46b701ad3b055e7c708323fb110b6676a8be458a758dd8f24e27" "1db337246ebc9c083be0d728f8d20913a0f46edc0a00277746ba411c149d7fe5" "6de7c03d614033c0403657409313d5f01202361e35490a3404e33e46663c2596" "0537901f4422f0d5f41ff43e51e39dc17d45d254fa36ce8d8d2786457759aef9" "5999e12c8070b9090a2a1bbcd02ec28906e150bb2cdce5ace4f965c76cf30476" "10e231624707d46f7b2059cc9280c332f7c7a530ebc17dba7e506df34c5332c4" "ed317c0a3387be628a48c4bbdb316b4fa645a414838149069210b66dd521733f" "938d8c186c4cb9ec4a8d8bc159285e0d0f07bad46edf20aa469a89d0d2a586ea" "c7a9a68bd07e38620a5508fef62ec079d274475c8f92d75ed0c33c45fbe306bc" "9d91458c4ad7c74cf946bd97ad085c0f6a40c370ac0a1cbeb2e3879f15b40553" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line ((((class color) (min-colors 89)) (:box nil :background "#5fafd7" :foreground "#ffffff"))))
 '(mode-line-inactive ((((class color) (min-colors 89)) (:box nil :background "#dadada" :foreground "#9e9e9e")))))

;; Evil Mode ;;
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)


(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; Folding http://www.emacswiki.org/emacs/FoldingMode
;; to enable call M-x folding-mode
(if (load "folding" 'nomessage 'noerror)
    (folding-mode-add-find-file-hook))
;; (folding-add-to-marks-list 'python-mode "#{{{" "#}}}" nil t) ;example
;;(folding-add-to-marks-list 'ruby-mode "#{{{" "#}}}" nil t) ;example

(define-key evil-normal-state-map "za" 'folding-toggle-show-hide)
(define-key evil-normal-state-map "zR" 'folding-whole-buffer)
(define-key evil-normal-state-map "zM" 'folding-open-buffer)
(define-key evil-normal-state-map "zr" 'folding-hide-current-subtree)
(define-key evil-normal-state-map "zm" 'folding-show-current-subtree)
(define-key evil-normal-state-map "zo" 'folding-show-current-entry)
(define-key evil-normal-state-map "zc" 'folding-hide-current-entry)
(define-key evil-normal-state-map "zj" 'folding-next-visible-heading)
(define-key evil-normal-state-map "zk" 'folding-previous-visible-heading)
;; (define-key evil-normal-state-map "zf" 'folding-fold-region)
(define-key evil-normal-state-map "zf"
  '(lambda ()
     "create fold, exit from shifting and add comment to it"
     (interactive)
     (folding-fold-region (region-beginning) (region-end))
     (folding-shift-out)
     (folding-toggle-show-hide)
     (evil-append-line 1)
     (insert " FoldingComment")
     (evil-normal-state)
     (evil-backward-WORD-begin)
     ))

(defun bss/folding-not-in-org ()
  "selective folding toggle by tab: skip org-mode"
  (interactive)
  (if (equal major-mode 'org-mode)
      (org-cycle)
    (folding-toggle-show-hide)
    ))
(define-key evil-normal-state-map (kbd "<tab>") 'bss/folding-not-in-org)


;; Flycheck (With Auto Indentation)
(require 'package)
(add-to-list 'package-archives
	     '("MELPA Stable" . "http://stable.melpa.org/packages/") t)
					;(package-initialize)
					;(package-refresh-contents)
					;(package-install 'flycheck)
(global-flycheck-mode)

					; Remove that annoying fkn menu-bar from the top of your screen
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-screen t); removes startup screen

					; Jedi:
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)                 ; optional

					; Neotree
(add-to-list 'load-path "/some/path/neotree")
(require 'neotree)
(global-set-key [f7] 'neotree-toggle)

					; Neotree Theme:
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

;; PowerLine
(setq sml/theme 'powerline)
(sml/setup)
(setq powerline-arrow-shape 'arrow14)   ;; the default
(add-to-list 'load-path "~/.emacs.d/vendor/emacs-powerline")
(require 'powerline)


(setq powerline-color1 "grey22")
(setq powerline-color2 "grey40")

;; Line Number 
(global-linum-mode t)


;; Ido Mode
(require 'ido)
(ido-mode t)

;; Emacs Color Theme:
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'gruvbox t)

;; Ranger
(setq-default dotspacemacs-configuration-layers
              '(ranger :variables
                       ranger-show-preview t))

;; load matlab-mode

;; syntax color
(global-font-lock-mode t)

;; use matlab-mode when you load .m files
(setq auto-mode-alist (cons '("\\.m\\'" . matlab-mode) auto-mode-alist))
(autoload 'matlab-shell "matlab" "Interactive Matlab mode." t)
;;
;; User Level customizations (You need not use them all):
(setq matlab-indent-function t)    ; if you want function bodies indented
(setq matlab-verify-on-save-flag nil) ; turn off auto-verify on save
(defun my-matlab-mode-hook () (setq fill-column 76))       ; where auto-fill should wrap
(add-hook 'matlab-mode-hook 'my-matlab-mode-hook)
(defun my-matlab-shell-mode-hook ()  '())
(add-hook 'matlab-shell-mode-hook 'my-matlab-shell-mode-hook)


;; Matlab mode
(add-to-list 'load-path "~/path/to/matlab_dot_el")
(load-library "matlab-load")
;; Enable CEDET feature support for MATLAB code. (Optional)
(matlab-cedet-setup)

;; Matlab-mode (extended)
;; From Blog page: http://blog.angjookanazawa.com/post/8815280589/productivity-matlab-emacs-integration-more

(add-to-list 'load-path "~/.emacs.d/matlab-emacs")
(load-library "matlab-load")
(custom-set-variables
 '(matlab-shell-command-switches '("-nodesktop -nosplash")))


(add-to-list 'auto-mode-alist '("\\.m" . matlab-mode))

(defmacro by-extension (ext mode)
  `(add-to-list 'auto-mode-alist '(,(format "\\.%s" ext) . ,mode)))


;; Add C/C++ functions to emacs list
;; M-x package-install company-c-headers
(require 'company)
(add-hook 'global-init-hook 'global-company-mode)
(add-to-list 'company-backends 'company-c-headers)


;; Python Auto-completion for Emacsa
;; Jedi.el blog: http://tkf.github.io/emacs-jedi/released/
;; Dependencies: EPC, deffered.el(>3.2), auto-complete
;; Python Dependencies: Jedi(>= 0.6), python-epc, argparse (for Python 2.6)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)                      ; optional
(setq jedi:complete-on-dot t)                 ; optional
(setq jedi:setup-keys t)


;; Emacs bash-autocompletion:
(global-set-key "\M-\r" 'shell-resync-dirs)

;; LaTex: AUCTex

(load "auctex.el" nil t t)
(require 'tex-mik)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)

;; PDFLaTeX:

(setq TeX-PDF-mode t)

(require 'tex)
(TeX-global-PDF-mode t)

;; Zathura - Emacs Setup:

(setq TeX-view-program-list '(("zathura" "zathura --page=%(outpage) %o")))
(custom-set-variables
 '(TeX-view-program-list (quote (("Zathura" "zathura %o")))) ; [1]
 '(TeX-view-program-selection
   (quote
    (((output-dvi style-pstricks) "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "Zathura")                                    ; [2]
     (output-html "xdg-open")))))

