;; Minimal UI
(scroll-bar-mode -1)
(tool-bar-mode   -1)
(tooltip-mode    -1)
(menu-bar-mode   -1)

(column-number-mode 1)
(global-display-line-numbers-mode t)
(dolist (mode '(org-mode-hook
		term-mode-hook
		markdown-mode-hook
		))
(add-hook mode (lambda() (display-line-numbers-mode 0))))

(global-set-key (kbd "M-x") 'counsel-M-x)

(global-font-lock-mode 1)
(global-auto-revert-mode t)
(setq inhibit-startup-message t)
(setq-default left-margin-width 3 right-margin-width 1)
 (set-window-buffer nil (current-buffer))
;;  Package configs
(require 'package)
;;(setq package-enable-at-startup nil)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("gnu" . "https://elpa.gnu.org/packages/")
			 ("nongnu" . "https://elpa.nongnu.org/nongnu/")
			 ))

(package-initialize)

;; Bootstrap `use-package`
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(require 'auto-complete)
(global-auto-complete-mode t)
;; (desktop-save-mode 1)
;; (desktop-load-default)
(setq backup-directory-alist `(("." . "~/.emacs_tmp")))
;; (setq auto-save-file-name-transforms `(("." . "~/.emacs_tmp")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(beacon-color "#ff9da4")
 '(case-fold-search t)
 '(custom-enabled-themes '(deeper-blue))
 '(custom-safe-themes
   '("e2c926ced58e48afc87f4415af9b7f7b58e62ec792659fcb626e8cba674d2065" "da53441eb1a2a6c50217ee685a850c259e9974a8fa60e899d393040b4b8cc922" "b5803dfb0e4b6b71f309606587dd88651efe0972a5be16ece6a958b197caeed8" "f7fed1aadf1967523c120c4c82ea48442a51ac65074ba544a5aefc5af490893b" "098bc2b3038a9a58b2f7034262b54f56a547d8d9a09ebe5b7a4a5fb6fbcaeae5" "333958c446e920f5c350c4b4016908c130c3b46d590af91e1e7e2a0611f1e8c5" "4c56af497ddf0e30f65a7232a8ee21b3d62a8c332c6b268c81e9ea99b11da0d3" "fc48cc3bb3c90f7761adf65858921ba3aedba1b223755b5924398c666e78af8b" "8146edab0de2007a99a2361041015331af706e7907de9d6a330a3493a541e5a6" "57a29645c35ae5ce1660d5987d3da5869b048477a7801ce7ab57bfb25ce12d3e" "00445e6f15d31e9afaa23ed0d765850e9cd5e929be5e8e63b114a3346236c44c" "fe2539ccf78f28c519541e37dc77115c6c7c2efcec18b970b16e4a4d2cd9891d" "9b54ba84f245a59af31f90bc78ed1240fca2f5a93f667ed54bbf6c6d71f664ac" "cf922a7a5c514fad79c483048257c5d8f242b21987af0db813d3f0b138dfaf53" "f6665ce2f7f56c5ed5d91ed5e7f6acb66ce44d0ef4acfaa3a42c7cfe9e9a9013" "4f1d2476c290eaa5d9ab9d13b60f2c0f1c8fa7703596fa91b235db7f99a9441b" "246a9596178bb806c5f41e5b571546bb6e0f4bd41a9da0df5dfbca7ec6e2250c" "a7b20039f50e839626f8d6aa96df62afebb56a5bbd1192f557cb2efb5fcfb662" "1bddd01e6851f5c4336f7d16c56934513d41cc3d0233863760d1798e74809b4b" "846b3dc12d774794861d81d7d2dcdb9645f82423565bfb4dad01204fa322dbd5" "4b6b6b0a44a40f3586f0f641c25340718c7c626cbf163a78b5a399fbe0226659" "745d03d647c4b118f671c49214420639cb3af7152e81f132478ed1c649d4597d" "84b14a0a41bb2728568d40c545280dbe7d6891221e7fbe7c2b1c54a3f5959289" "e8df30cd7fb42e56a4efc585540a2e63b0c6eeb9f4dc053373e05d774332fc13" "d47f868fd34613bd1fc11721fe055f26fd163426a299d45ce69bef1f109e1e71" "23c806e34594a583ea5bbf5adf9a964afe4f28b4467d28777bcba0d35aa0872e" "b186688fbec5e00ee8683b9f2588523abdf2db40562839b2c5458fcfb322c8a4" "6c531d6c3dbc344045af7829a3a20a09929e6c41d7a7278963f7d3215139f6a7" "5784d048e5a985627520beb8a101561b502a191b52fa401139f4dd20acb07607" "1f1b545575c81b967879a5dddc878783e6ebcca764e4916a270f9474215289e5" "cbdf8c2e1b2b5c15b34ddb5063f1b21514c7169ff20e081d39cf57ffee89bc1e" "6c98bc9f39e8f8fd6da5b9c74a624cbb3782b4be8abae8fd84cbc43053d7c175" "028c226411a386abc7f7a0fba1a2ebfae5fe69e2a816f54898df41a6a3412bb5" "613aedadd3b9e2554f39afe760708fc3285bf594f6447822dd29f947f0775d6c" "a9a67b318b7417adbedaab02f05fa679973e9718d9d26075c6235b1f0db703c8" "1704976a1797342a1b4ea7a75bdbb3be1569f4619134341bd5a4c1cfb16abad4" "97db542a8a1731ef44b60bc97406c1eb7ed4528b0d7296997cbb53969df852d6" "3d47380bf5aa650e7b8e049e7ae54cdada54d0637e7bac39e4cc6afb44e8463b" "f91395598d4cb3e2ae6a2db8527ceb83fed79dbaf007f435de3e91e5bda485fb" "d268b67e0935b9ebc427cad88ded41e875abfcc27abd409726a92e55459e0d01" "7a7b1d475b42c1a0b61f3b1d1225dd249ffa1abb1b7f726aec59ac7ca3bf4dae" "a82ab9f1308b4e10684815b08c9cac6b07d5ccb12491f44a942d845b406b0296" "c4063322b5011829f7fdd7509979b5823e8eea2abf1fe5572ec4b7af1dd78519" "1d5e33500bc9548f800f9e248b57d1b2a9ecde79cb40c0b1398dec51ee820daf" "3d54650e34fa27561eb81fc3ceed504970cc553cfd37f46e8a80ec32254a3ec3" "da186cce19b5aed3f6a2316845583dbee76aea9255ea0da857d1c058ff003546" "4b0e826f58b39e2ce2829fab8ca999bcdc076dec35187bf4e9a4b938cb5771dc" "b0334e8e314ea69f745eabbb5c1817a173f5e9715493d63b592a8dc9c19a4de6" "db7f422324a763cfdea47abf0f931461d1493f2ecf8b42be87bbbbbabf287bfe" "234dbb732ef054b109a9e5ee5b499632c63cc24f7c2383a849815dacc1727cb6" "711efe8b1233f2cf52f338fd7f15ce11c836d0b6240a18fffffc2cbd5bfe61b0" "aaa4c36ce00e572784d424554dcc9641c82d1155370770e231e10c649b59a074" "188fed85e53a774ae62e09ec95d58bb8f54932b3fd77223101d036e3564f9206" "93ed23c504b202cf96ee591138b0012c295338f38046a1f3c14522d4a64d7308" "f2927d7d87e8207fa9a0a003c0f222d45c948845de162c885bf6ad2a255babfd" "c4bdbbd52c8e07112d1bfd00fee22bf0f25e727e95623ecb20c4fa098b74c1bd" "08a27c4cde8fcbb2869d71fdc9fa47ab7e4d31c27d40d59bf05729c4640ce834" "d74c5485d42ca4b7f3092e50db687600d0e16006d8fa335c69cf4f379dbd0eee" "9efb2d10bfb38fe7cd4586afb3e644d082cbcdb7435f3d1e8dd9413cbe5e61fc" "74ba9ed7161a26bfe04580279b8cad163c00b802f54c574bfa5d924b99daa4b9" "d6603a129c32b716b3d3541fc0b6bfe83d0e07f1954ee64517aa62c9405a3441" "4bca89c1004e24981c840d3a32755bf859a6910c65b829d9441814000cf6c3d0" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "e6ff132edb1bfa0645e2ba032c44ce94a3bd3c15e3929cdf6c049802cf059a2a" "13a8eaddb003fd0d561096e11e1a91b029d3c9d64554f8e897b2513dbf14b277" "ba72dfc6bb260a9d8609136b9166e04ad0292b9760a3e2431cf0cd0679f83c3a" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "41098e2f8fa67dc51bbe89cce4fb7109f53a164e3a92356964c72f76d068587e" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "e6df46d5085fde0ad56a46ef69ebb388193080cc9819e2d6024c9c6e27388ba9" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" "57e3f215bef8784157991c4957965aa31bac935aca011b29d7d8e113a652b693" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default))
 '(flycheck-color-mode-line-face-to-color 'mode-line-buffer-id)
 '(frame-background-mode 'dark)
 '(global-font-lock-mode t nil (font-lock))
 '(org-export-backends '(ascii beamer html icalendar latex man md odt deck))
 '(package-selected-packages
   '(go-mode ox-pandoc github-dark-vscode-theme citeproc-org ox-reveal rust-mode counsel docker-compose-mode dockerfile-mode multiple-cursors soothe-theme underwater-theme helm-lsp dash-functional lsp-ui dap-mode lsp-mode company-web company-quickhelp-terminal yaml-mode helm-bibtexkey org-noter-pdftools org-noter org-roam-server org-ref org-roam-bibtex org-roam texfrag epresent auto-complete js-comint doom-themes csv-mode windresize flycheck-lilypond zenburn-theme solarized-theme afternoon-theme json-mode color-theme-sanityinc-tomorrow js2-mode spacemacs-theme sclang-snippets helm-w3m w3m yasnippet-snippets ivy undo-tree auctex expand-region web-mode magit ein py-autopep8 flycheck markdown-mode material-theme better-defaults elpy which-key helm))
 '(sclang-eval-line-forward nil)
 '(show-paren-mode t nil (paren))
 '(transient-mark-mode t)
 '(window-divider-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line-buffer-id ((t (:foreground "dark magenta" :weight bold))))
 '(region ((t (:extend t :background "gray54")))))

;; Rust
(require 'rust-mode)

(add-hook 'after-init-hook 'global-company-mode)
;; lsp
(setq gc-cons-threshold (* 100 1024 1024)
      read-process-output-max (* 1024 1024)
      company-idle-delay 0.0
      company-minimum-prefix-length 1
      create-lockfiles nil) ;; lock files will kill `npm start'
(with-eval-after-load 'lsp-mode
  (require 'dap-chrome)
  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration)
  (yas-global-mode))
(add-hook 'web-mode-hook #'lsp)
(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp))))  ; or lsp-deferred

(defun ipython ()
    (interactive)
    (term "/opt/homebrew/bin/ipython"))

;; ispell spell check

;; (dolist (hook '(text-mode-hook))
;;   (add-hook hook (lambda () (flyspell-mode 1))))

;; multiple cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-M-j") 'mc/mark-all-dwim)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")
(require 'recentf)
(recentf-mode 1)
(electric-pair-mode 1)
(show-paren-mode 1)
(dynamic-completion-mode 1)
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"
	"~/.emacs.d/elpa"
        ))

(yas-global-mode 1)

;; (defun recentf-open-files-compl ()
;;   (interactive)
;;   (let* ((all-files recentf-list)
;;     (tocpl (mapcar (function
;;        (lambda (x) (cons (file-name-nondirectory x) x))) all-files))
;;     (prompt (append '("File name: ") tocpl))
;;     (fname (completing-read (car prompt) (cdr prompt) nil nil)))
;;     (find-file (cdr (assoc-ignore-representation fname tocpl)))))

;; (global-set-key "\C-x\C-r" 'recentf-open-files-compl)

(global-set-key (kbd "C-x C-r") 'ido-recentf-open)

(defun ido-recentf-open ()
  "Use `ido-completing-read' to \\[find-file] a recent file"
  (interactive)
  (if (find-file (ido-completing-read "Find recent file: " recentf-list))
      ;; (message "Opening file...")
    (message "Aborting")))


;; My Fav Themes
(load-theme 'doom-challenger-deep)
;;(load-theme 'doom-dracula)
;; (load-theme 'underwater)
;; (load-theme 'modus-operandi) ;; light
;; (load-theme 'doom-laserwave)
;;(load-theme 'sanityinc-tomorrow-night)
;; (load-theme 'github-dark-vscode)
;; (load-theme 'doom-Iosvkem)

(add-to-list 'load-path "~/.emacs.d/el")

(setenv "PATH" (concat (getenv "PATH") "/Applications/SuperCollider.app/Contents/MacOS/"))
;; (setq exec-path (append exec-path '("/Applications/SuperCollider.app/Contents/MacOS/")))
(setq exec-path (append exec-path '("/Applications/SuperCollider.app/Contents/MacOS/")))
(add-to-list 'load-path "/Users/serkansevilgen/Library/Application Support/SuperCollider/downloaded-quarks/scel/el")
(require 'sclang)

(require 'sclang-snippets)

;; Set path for csound executable
(setenv "PATH" (concat (getenv "PATH") "/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

(add-to-list 'load-path "~/.emacs.d/csound-mode/")
(require 'csound-mode)

(use-package csound-mode
  :mode (("\\.csd\\'" . csound-mode)
  	 ("\\.orc\\'" . csound-mode)
  	 ("\\.sco\\'" . csound-mode)
  	 ("\\.udo\\'" . csound-mode))
  :load-path "packages/csound-mode/")

;; Custom header for Csound UDP server
;; (setq csound-repl-sr 44100)
;; (setq csound-repl-ksmps 32)
;; (setq csound-repl-nchnls 8)
;; (setq csound-repl-0dbfs 1)

;; Helm
(use-package helm
  :ensure t
  :init
  (setq helm-mode-fuzzy-match t)
  (setq helm-completion-in-region-fuzzy-match t)
  (setq helm-candidate-number-list 50))

;; Which Key
(use-package which-key
  :ensure t
  :init
  (setq which-key-separator " ")
  (setq which-key-prefix-prefix "+")
  :config
  (which-key-mode))

;; Elpy 
(use-package elpy
  :ensure t
  :init
  (elpy-enable))

(load "elpy")
(load "elpy-rpc")
(load "elpy-shell")
(load "elpy-profile")
(load "elpy-refactor")


;; Enable autopep8
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

(add-hook 'after-init-hook #'global-flycheck-mode)

(when (load "flycheck" t t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(add-hook 'elpy-mode-hook (lambda ()
                            (add-hook 'before-save-hook
                                      'elpy-format-code nil t)))


;;(global-set-key (kbd "C-/") 'comment-region)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

(require 'ace-jump-mode)
    (define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
    
(global-undo-tree-mode 1)
;; make ctrl-z undo
(global-set-key (kbd "C-z") 'undo)
;; make ctrl-Z redo
(defalias 'redo 'undo-tree-redo)
(global-set-key (kbd "C-S-z") 'redo)

;; Custom key bindings
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; Javasript + HTML + CSS
;; npm install -g eslint
;; npm install --global prettier
(add-to-list 'auto-mode-alist '("\\.jsx?$" . web-mode))
(setq web-mode-content-types-alist '(("jsx" . "\\.js[x]?\\'")))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))


(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(javascript-jshint json-jsonlist)))

(require 'web-mode)
(flycheck-add-mode 'javascript-eslint 'web-mode)

;; (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
;; (add-to-list 'interpreter-mode-alist '("node" . js2-mode))
;; (add-to-list 'auto-mode-alist '("\\.jsx?\\'" . js2-jsx-mode))
;; (add-to-list 'interpreter-mode-alist '("node" . js2-jsx-mode))
(add-to-list 'auto-mode-alist '("\\.jsx?$" . web-mode)) ;; auto-enable for .js/.jsx files
(setq web-mode-content-types-alist '(("jsx" . "\\.js[x]?\\'")))
(defun web-mode-init-hook ()
  "Hooks for Web mode.  Adjust indent."
  (setq web-mode-markup-indent-offset 4))
  
(add-hook 'web-mode-hook  'web-mode-init-hook)
;; (eval-after-load 'web-mode
;;    '(progn
;;       (add-hook 'web-mode-hook #'add-node-modules-path)
;;       (add-hook 'after-save-hook #'web-mode)
;;       (add-hook 'web-mode-hook #'prettier-js-mode)))


(require 'prettier-js)
(add-hook 'web-mode-hook 'prettier-js-mode)

(require 'multi-term)
(setq multi-term-program "/bin/zsh")
 	
(load "auctex.el" nil t t)
;; (load "preview-latex.el" nil t t)
(setenv "PATH" (concat (getenv "PATH") ":/Library/TeX/texbin/"))  
(setq exec-path (append exec-path '("/Library/TeX/texbin/")))

(setq load-path (append (list (expand-file-name "~/.emacs.d/lilypond")) load-path))
(require 'lilypond-mode)
(add-to-list 'auto-mode-alist '("\\.ly\\'" . LilyPond-mode))

;; Elpy to fix ^G problem on shell
;; (setq python-shell-interpreter-args "-c exec('__import__(\\'readline\\')') -i")

;; resize windows
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;;; Stefan Monnier <foo at acm.org>. It is the opposite of fill-paragraph    
    (defun unfill-paragraph (&optional region)
      "Takes a multi-line paragraph and makes it into a single line of text."
      (interactive (progn (barf-if-buffer-read-only) '(t)))
      (let ((fill-column (point-max))
            ;; This would override `fill-column' if it's an integer.
            (emacs-lisp-docstring-fill-column t))
        (fill-paragraph nil region)))

(define-key global-map "\M-Q" 'unfill-paragraph)

;; HideShow minor mode
(add-hook 'web-mode-hook 'hs-minor-mode)
(add-hook 'python-mode-hook 'hs-minor-mode)
(add-hook 'csound-mode-hook 'hs-minor-mode)
(add-hook 'sclang-hook 'hs-minor-mode)

(require 'js-comint)

(add-hook 'web-mode-hook
          (lambda ()
	    (local-set-key (kbd "C-c C-o") 'js-comint-repl)
	    (local-set-key (kbd "C-c C-c") 'js-comint-send-region)	    
            (local-set-key (kbd "C-x C-e") 'js-send-last-sexp)
            (local-set-key (kbd "C-c b") 'js-send-buffer)
            (local-set-key (kbd "C-c C-b") 'js-send-buffer-and-go)))

(setq markdown-enable-math t)
(add-hook 'markdown-mode-hook #'texfrag-mode)
(setq markdown-fontify-code-blocks-natively t)

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

(add-hook 'yaml-mode-hook
      '(lambda ()
        (define-key yaml-mode-map "\C-m" 'newline-and-indent)))


(add-hook 'text-mode-hook 'turn-on-visual-line-mode)

;; Prevent undo tree files from polluting your git repo
(setq undo-tree-history-directory-alist '(("." . "~/.emacs_undo")))

;; ORG MODE
(require 'oc-csl)
(setq citeproc-org-locales-dir "~/.emacs.d/citations/locales")
(setq org-cite-csl-styles-dir "~/.emacs.d/citations/styles")

;; All code src exported as minted (highlighted)
(setq org-latex-listings 'minted
      org-latex-packages-alist '(("" "minted"))
      org-latex-pdf-process
      '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))

;; (setq  org-odt-preferred-output-format "docx")
(setq org-directory "~/org")
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c a a") 'org-agenda)
(setq org-agenda-files
	'("~/Dropbox/org/temblor_todo.org"
	  "~/Dropbox/org/music_todo.org"
 	  "~/Dropbox/org/music_open_calls.org"
	  "~/Dropbox/org/personal_todo.org"
))

(setq org-log-done 'time)
;; (setq org-log-done 'note)

(setq org-todo-keywords
      '((sequence "TODO(t)"  "NEXT(n)" "INPROG(p)"
		  "WAIT(w)" "INREVIEW(r)" "|" "DONE(d)" "CANCELLED(c)")
))


(setq org-priority-highest 1)
(setq org-priority-lowest 10)
(setq org-priority-default 10)

(setq org-agenda-columns t)
(setq org-agenda-show-all-dates nil)
(setq org-columns-default-format "%TODO %60ITEM(Task) %TAGS %30DEADLINE %15SCHEDULED %6Effort(Estim){:}  %PRIORITY")
(setq org-agenda-custom-commands
      '(("d" "Deadlines" agenda ""
	 ((org-agenda-files '("~/Dropbox/org/temblor_todo.org"
			      "~/Dropbox/org/music_todo.org"
 			      "~/Dropbox/org/music_open_calls.org"
			      "~/Dropbox/org/personal_todo.org"
			      ))
	  (org-agenda-entry-types '(:deadline))
	  ;; (org-agenda-start-day "2014-01-01")
	  (org-agenda-span 'year)
	  (org-agenda-include-diary nil)
	  (org-agenda-show-all-dates nil)))))

(setq org-agenda-sorting-strategy 
      '((agenda  priority-down category-down time-up deadline-up scheduled-up)
	(todo todo-state-down priority-down category-down)
	(tags priority-down category-keep)
	(search category-keep)))


(setq org-todo-keyword-faces
  '(
    ("INPROG" . "#17bae3")
    ("NEXT" . "#eb4d09")
    ))

(setq org-startup-folded t)
(setq org-deadline-warning-days 0)
(setq org-export-with-timestamps t)
(setq org-export-with-date t)
(setq org-export-with-planning t)
(setq org-default-notes-file (concat org-directory "/captured.org"))
(setq org-capture-templates
      '(("t" "Temblor")
	("tt" "Temblor Todo" entry (file+headline "~/Dropbox/org/temblor_todo.org" "Inbox")
         "* TODO %?\n  %i\n  %a")
        ("tj" "Temblor Journal" entry (file+datetree "~/Dropbox/org/temblor/journal.org")
         "* %?\nEntered on %U\n  %i\n  %a")
	("m" "Music")
	("mt" "Music Todo" entry (file+headline "~/Dropbox/org/music_todo.org" "Inbox")
         "* TODO %?\n  %i\n  %a")
	("mc" "Music Open Calls" entry (file+headline "~/Dropbox/org/music_open_calls.org" "Inbox")
         "* TODO %?\n  %i\n  %a")
        ("mj" "Music Journal" entry (file+datetree "~/Dropbox/org/music/journal.org")
         "* %?\nEntered on %U\n  %i\n  %a")
	("p" "Personal Todo" entry (file+headline "~/Dropbox/org/personal_todo.org" "Tasks")
         "* TODO %?\n  %i\n  %a")
	))

(setq org-startup-indented t)

(setq org-image-actual-width nil)

;; (setq org-latex-pdf-process
;;   '("latexmk -pdflatex='pdflatex -interaction nonstopmode' -pdf -bibtex -f %f"))

(require 'ox-pandoc)

;; default options for all output formats
(setq org-pandoc-options '((standalone . t)))
;; cancel above settings only for 'docx' format
(setq org-pandoc-options-for-docx '((standalone . nil)))
;; special settings for beamer-pdf and latex-pdf exporters
(setq org-pandoc-options-for-beamer-pdf '((pdf-engine . "xelatex")))
(setq org-pandoc-options-for-latex-pdf '((pdf-engine . "pdflatex")))
;; special extensions for markdown_github output
(setq org-pandoc-format-extensions '(markdown_github+pipe_tables+raw_html))

(require 'org-inlinetask)
