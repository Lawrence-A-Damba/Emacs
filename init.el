(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(unless (package-installed-p 'green-phosphor-theme)
  (package-refresh-contents)
  (package-install 'green-phosphor-theme))

(use-package which-key
  :ensure t
  :init
  (which-key-mode))

(use-package org
  :ensure t
  :init
  (org-mode))

(use-package evil
  :ensure t
  :init
  (evil-mode 1))

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (green-phosphor)))
 '(custom-safe-themes
   (quote
    ("ae3a3bed17b28585ce84266893fa3a4ef0d7d721451c887df5ef3e24a9efef8c" default)))
 '(org-agenda-files (quote ("~/Git-Remote/Emacs/Org/Corps.org")))
 '(package-selected-packages
   (quote
    (green-phosphor-theme auctex evil-org yasnippet-snippets yasnippet which-key use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
