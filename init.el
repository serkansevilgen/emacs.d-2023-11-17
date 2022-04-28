;; Minimal UI
(scroll-bar-mode -1)
(tool-bar-mode   -1)
(tooltip-mode    -1)
(menu-bar-mode   -1)

(global-linum-mode t)
(column-number-mode 1)
(global-font-lock-mode 1)
(global-auto-revert-mode t)
(setq inhibit-startup-message t)
;;(setq linum-format "%4d \u2502 ")
(setq-default left-margin-width 3 right-margin-width 1)
 (set-window-buffer nil (current-buffer))
;;  Package configs
(require 'package)
;;(setq package-enable-at-startup nil)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("gnu" . "https://elpa.gnu.org/packages/")
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
   '("b0334e8e314ea69f745eabbb5c1817a173f5e9715493d63b592a8dc9c19a4de6" "db7f422324a763cfdea47abf0f931461d1493f2ecf8b42be87bbbbbabf287bfe" "234dbb732ef054b109a9e5ee5b499632c63cc24f7c2383a849815dacc1727cb6" "711efe8b1233f2cf52f338fd7f15ce11c836d0b6240a18fffffc2cbd5bfe61b0" "aaa4c36ce00e572784d424554dcc9641c82d1155370770e231e10c649b59a074" "188fed85e53a774ae62e09ec95d58bb8f54932b3fd77223101d036e3564f9206" "93ed23c504b202cf96ee591138b0012c295338f38046a1f3c14522d4a64d7308" "f2927d7d87e8207fa9a0a003c0f222d45c948845de162c885bf6ad2a255babfd" "c4bdbbd52c8e07112d1bfd00fee22bf0f25e727e95623ecb20c4fa098b74c1bd" "08a27c4cde8fcbb2869d71fdc9fa47ab7e4d31c27d40d59bf05729c4640ce834" "d74c5485d42ca4b7f3092e50db687600d0e16006d8fa335c69cf4f379dbd0eee" "9efb2d10bfb38fe7cd4586afb3e644d082cbcdb7435f3d1e8dd9413cbe5e61fc" "74ba9ed7161a26bfe04580279b8cad163c00b802f54c574bfa5d924b99daa4b9" "d6603a129c32b716b3d3541fc0b6bfe83d0e07f1954ee64517aa62c9405a3441" "4bca89c1004e24981c840d3a32755bf859a6910c65b829d9441814000cf6c3d0" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "e6ff132edb1bfa0645e2ba032c44ce94a3bd3c15e3929cdf6c049802cf059a2a" "13a8eaddb003fd0d561096e11e1a91b029d3c9d64554f8e897b2513dbf14b277" "ba72dfc6bb260a9d8609136b9166e04ad0292b9760a3e2431cf0cd0679f83c3a" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "41098e2f8fa67dc51bbe89cce4fb7109f53a164e3a92356964c72f76d068587e" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "e6df46d5085fde0ad56a46ef69ebb388193080cc9819e2d6024c9c6e27388ba9" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" "57e3f215bef8784157991c4957965aa31bac935aca011b29d7d8e113a652b693" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default))
 '(flycheck-color-mode-line-face-to-color 'mode-line-buffer-id)
 '(frame-background-mode 'dark)
 '(global-font-lock-mode t nil (font-lock))
 '(package-selected-packages
   '(multiple-cursors soothe-theme underwater-theme helm-lsp dash-functional lsp-ui dap-mode lsp-mode company-web company-quickhelp-terminal yaml-mode helm-bibtexkey org-noter-pdftools org-noter org-roam-server org-ref org-roam-bibtex org-roam org-gcal texfrag epresent auto-complete js-comint doom-themes csv-mode windresize flycheck-lilypond zenburn-theme solarized-theme afternoon-theme json-mode color-theme-sanityinc-tomorrow js2-mode spacemacs-theme sclang-snippets helm-w3m w3m yasnippet-snippets ivy undo-tree auctex expand-region web-mode magit ein py-autopep8 flycheck markdown-mode material-theme better-defaults elpy which-key helm))
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

;;

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



;;(load-theme 'doom-acario-dark)
(load-theme 'underwater)


(add-to-list 'load-path "~/.emacs.d/el")
(add-to-list 'load-path "~/.emacs.d/supercollider/el")

(setenv "PATH" (concat (getenv "PATH") "/Applications/SuperCollider/SuperCollider.app/Contents/MacOS"))
(setq exec-path (append exec-path '("/Applications/SuperCollider/SuperCollider.app/Contents/MacOS")))
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

;; ORG MODE
;; (add-hook 'org-mode-hook (lambda () (linenum-mode 0)))
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
      '((sequence "TODO(t)"  "NEXT(n)" "INPROG(p)" "INREVIEW(r)" "|" "DONE(d)" "CANCELLED(c)")
))


(setq org-priority-highest 1)
(setq org-priority-lowest 10)
(setq org-priority-default 10)

(setq org-agenda-columns t)
(setq org-agenda-show-all-dates nil)
(setq org-columns-default-format "%60ITEM(Task) %TODO %6Effort(Estim){:} %TAGS %PRIORITY")
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


(require 'org-gcal)
(setq org-gcal-client-id "180544618536-r1msvas29htcuf7ujj0orbetb1h08gu7.apps.googleusercontent.com"
      org-gcal-client-secret "gNtSpl_QHFFTH_hWn_ePh_II"
      org-gcal-fetch-file-alist '(("serkan@temblorapp.com" .  "~/org/temblor/calendar.org")
				  ))

(setq org-startup-indented t)
