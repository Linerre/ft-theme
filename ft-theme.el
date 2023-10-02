;;; ft-theme.el --- Emacs theme that mimics Financial Times
;;; Commentary:

;;; Version: 0.1.0
;;; Main Source: https://registry.origami.ft.com/components/o-colors@6.5.1
;;; Code:

(deftheme ft
  "An Emacs theme that mimics Financial Times.")

(defvar theme-header-scale '(1.2 1.1 1.0 1.0 1.0 1.0 1.0)
  "Scales for headers.")

(let (;; primary
      (black     "#000000")             ; keyword
      (fg        "#4F4A4A")             ; fg
      (bg        "#FFF1E5")
      (white     "#FFFFFF")             ; bg
      (black     "#000000")
      (black70   "#4D4845")
      (ft-pink   "#FCD0B1")             ; darker bg that paper below
      (ft-grey   "#333333")


      ;; provide visual hierarchy to differentiate content and are brand identifiers of the FT
      (claret    "#990F3D")            ; ft-red
      (teal      "#0D7680")             ; ft-green for string
      (oxford    "#0F5499")             ; ft-blue
      (slate     "#262A33")             ; ft-dark-grey
      (crimson   "#CC0000")             ;
      (matisse   "#355778")
      ;; from ft print
      (bblue     "#0783BA")             ; bottom blue in graphics
      (sblue     "#66A1C6")             ; blue used for section title
      (hblue     "#1479A1")             ; high contrast blue used for banner; fg should be white
      (gd-blue   "#006F9B")             ; graphic-dark-blue
      (cyellow   "#D3B73F")             ; yellow used in comparision with blue
      (sgrey     "#929397")             ; grey used for section header bg
      (select    "#B6CCC7")             ; 40% of teal
      (ssel      "#B3D9E3")             ; 40% of light-blue for secondary selection
      (tgrey     "#E8EAEE")             ; grey for title area bg or popup
      (oxford40  "#0A3866")
      (oxford50  "#0D4680")             ; slightly lighter oxford
      (oxford70  "#1470CC")             ; lighter oxford
      (redbg     "#A8352C")             ; red bg used with white fg
      (bluebg    "#5999B3")             ; blue bg used with white fg
      (shblue    "#B6CEDF")             ; section light blue bg used with fg bleow
      (shblack   "#231F20")
      ;;teriary palette
      ;; Used sparingly, these colors provide contrast for highlighting and messaging.
      (bullet    "#F26638")             ; used for bullet point
      (light-blue "#00A0DD")
      (velvet    "#593380")             ; purple
      (crimson   "#CC0000")             ; high-contrast red

      ;; lighter variantions of the above, prefiex with `l'
      (ghblue    "#DFF7FF")            ; secondary selection, session background
      (adfg      "#00572C")            ; git added text/fg color
      (adbg      "#CCDFC7")            ; git added bg color
      (rmfg      "#660A29")            ; git added text/fg color: claret40
      (rmbg      "#EBC4C3")            ; git removed bg color
      (cm        "#707070")
      (lh        "#0DA59B")
      (cur       "#363636")
      (doc       "#2D97A1")             ; docs: cyan
      (hl        "#FFBC5D"))            ; highlight: orange

  (custom-theme-set-faces
   'ft
   `(default                    ((((type tty)))
                                (((type graphic)) :background ,bg :foreground ,fg)))
   ;; Basics
   `(cursor                      ((t (:background ,cur))))
   `(region                      ((t (:background ,select :extend nil))))
   `(hl-line                     ((t (:background ,ssel))))
   `(fringe                      ((t (:background ,bg))))
   `(show-paren-match            ((t (:background ,cyellow :box (:line-width (-1 . -1) :style nil)))))
   `(highlight                   ((t (:background ,select :foreground ,fg))))
   `(button                      ((t (:box (:line-width (-1 . -1) :color ,teal)))))
   `(vertical-border             ((t ())))
   `(italic                      ((t (:slant italic :underline nil))))
   `(line-number-current-line    ((t (:foreground ,fg :background ,hl))))
   `(completions-common-part     ((t (:bold t))))
   `(minibuffer-prompt           ((t ())))
   `(lazy-highlight              ((t (:foreground ,lh :underline t))))
   `(compilation-info            ((t ())))
   `(compilation-warning         ((t ())))
   `(compilation-column-number   ((t ())))
   `(completions-highlight       ((t ())))
   `(warning                     ((t ())))
   `(match                       ((t (:background ,select))))
   `(secondary-selection         ((t (:background ,ssel :extend nil))))
   `(help-key-binding            ((t (:bold t))))
   `(shadow                      ((t (:foreground ,cm))))
   `(error                       ((t (:foreground ,claret))))
   ;; `(window-divider                 ((t (:foreground ,cm))))
   ;; `(window-divider-first-pixel     ((t (:foreground ,cm))))
   ;; `(window-divider-last-pixel      ((t (:foreground ,cm))))
   ;; `(line-number                    ((t (:foreground ,cm))))

   ;; ISearch
   `(isearch                        ((t (:background ,select :foreground ,fg))))
   `(isearch-fail                   ((t (:background ,rmbg :foreground ,claret))))
   `(isearch-group-1                ((t (:background ,redbg :foreground ,white))))
   `(isearch-group-2                ((t (:background ,bluebg :foreground ,white))))

   ;; Font Locks
   `(font-lock-comment-face           ((t (:foreground ,claret))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,claret))))
   `(font-lock-delimiter-face         ((t (:foreground ,fg))))  ; 70% of black
   `(font-lock-string-face            ((t (:foreground ,teal))))
   `(font-lock-doc-face               ((t (:foreground ,bblue))))
   `(font-lock-bracket-face           ((t (:foreground "#66605C"))))
   `(font-lock-builtin-face           ((t ())))
   `(font-lock-type-face              ((t ())))
   `(font-lock-variable-name-face     ((t ())))
   `(font-lock-keyword-face           ((t (:foreground ,black))))
   `(font-lock-constant-face          ((t (:foreground ,velvet))))
   `(font-lock-function-name-face     ((t (:foreground ,oxford))))
   `(font-lock-warning-face           ((t (:bold t))))
   `(font-lock-preprocessor-face      ((t (:foreground "#66605C"))))
   `(font-lock-number-face            ((t (:foreground ,velvet))))
   `(highlight-numbers-number         ((t (:foreground ,velvet))))

   ;; shell
   `(sh-quoted-exec             ((t ())))
   `(sh-heredoc                 ((t (:foreground ,teal))))

   ;; IMenu
   `(imenu-list-entry-face-0          ((t ())))
   `(imenu-list-entry-subalist-face-0 ((t (:bold t))))

   ;; Mode Line
   `(tab-line                       ((t ())))
   `(mode-line                      ((t (:background ,black :foreground ,bg))))
   `(mode-line-inactive             ((t (:background ,"#F2DFCE" :foreground ,ft-grey))))
   `(header-line                    ((t ())))
   `(header-line-inactive           ((t ())))

   ;; Yasnippet
   `(yas-field-highlight-face       ((t (:background ,ssel :foreground ,fg))))
   `(yascroll:thumb-fringe          ((t (:foreground ,cm :background ,cm))))
   `(yascroll:thumb-text-area       ((t (:foreground ,cm :background ,cm))))

   ;; Company
   `(company-preview-common            ((t (:inherit default))))
   `(company-preview-search            ((t (:inherit default))))
   `(company-tooltip-common            ((t ())))
   `(company-tooltip-common-selection  ((t (:bold t :foreground ,white))))
   `(company-tooltip                   ((t (:background ,tgrey))))
   `(company-tooltip-search            ((t ())))
   `(company-tooltip-search-selection  ((t (:background ,hblue :foreground ,white))))
   `(company-tooltip-selection         ((t (:background ,hblue :foreground ,white))))
   `(company-tooltip-mouse             ((t (:background ,hblue :foreground ,white))))
   `(company-tooltip-preview           ((t (:background ,hblue :foreground ,white))))
   `(company-tooltip-annotation        ((t ())))
   ;; This nulls the scrollbar in effect
   `(company-tooltip-scrollbar-track   ((t (:background ,tgrey))))
   `(company-tooltip-scrollbar-thumb   ((t (:background ,tgrey))))
   `(company-template-field            ((t (:inherit yas-field-highlight-face))))

   ;; Cargo
   `(cargo-process--standard-face      ((t (:inherit default))))
   `(cargo-process--error-face         ((t (:foreground ,redbg))))
   `(cargo-process--pointer-face       ((t (:foreground ,bluebg))))
   `(cargo-process--warning-face       ((t (:foreground "#615440"))))

   ;; Vertico & Orderless
   `(vertico-current         ((t (:background ,ssel))))
   `(orderless-match-face-0  ((t (:foreground ,oxford40))))
   `(orderless-match-face-1  ((t (:foreground ,claret))))
   `(orderless-match-face-2  ((t (:foreground ,ssel))))
   `(orderless-match-face-3  ((t (:foreground ,fg))))

   ;; Vundo
   `(vundo-highlight  ((t (:foreground ,hl))))

   ;; Meow
   `(meow-beacon-indicator          ((t (:bold t))))
   `(meow-keypad-indicator          ((t (:bold t))))
   `(meow-insert-indicator          ((t (:bold t))))
   `(meow-normal-indicator          ((t (:bold t))))
   `(meow-motion-indicator          ((t (:bold t))))
   `(meow-keypad-cursor             ((t (:background ,cur))))
   `(meow-insert-cursor             ((t (:background ,cur))))
   `(meow-normal-cursor             ((t (:background ,cur))))
   `(meow-motion-cursor             ((t (:background ,cur))))
   `(meow-unknown-cursor            ((t (:background ,cur))))
   `(meow-beacon-cursor             ((t (:background ,cur))))

   ;; Cider
   `(cider-result-overlay-face      ((t (:inverse-video t))))
   `(cider-repl-stderr-face         ((t ())))
   `(cider-repl-stdout-face         ((t (:foreground "gray60"))))
   `(cider-test-error-face          ((t (:foreground "yellow" :inverse-video t))))

   ;; Clojure
   `(clojure-character-face       ((t ())))
   `(clojure-keyword-face         ((t (:foreground ,velvet))))

   ;; Magit
   `(magit-branch-local                ((t (:foreground ,velvet))))
   `(magit-branch-remote               ((t (:foreground ,oxford))))
   `(magit-header-line                 ((t ())))
   `(magit-head                        ((t ())))
   `(magit-tag                         ((t (:foreground ,cm))))
   `(magit-section-highlight           ((t (:background ,ghblue))))
   `(magit-section-heading             ((t (:foreground ,oxford))))
   `(magit-section-selection           ((t ())))
   `(magit-diff-removed                ((t (:background ,rmbg :foreground "gray50"))))
   `(magit-diff-removed-highlight      ((t (:background ,rmbg :foreground ,rmfg))))
   `(magit-diff-added                  ((t (:background ,adbg :foreground "gray50"))))
   `(magit-diff-added-highlight        ((t (:background ,adbg :foreground ,adfg))))
   `(magit-diff-context-highlight      ((t (:background ,bg :foreground ,fg))))
   `(magit-diff-whitespace-warning     ((t (:foreground ,fg))))
   `(magit-reflog-cherry-pick          ((t (:foreground ,teal))))
   `(magit-reflog-checkout             ((t (:foreground ,teal))))
   `(magit-reflog-merge                ((t (:foreground ,teal))))
   `(magit-reflog-other                ((t (:foreground ,oxford70))))
   `(magit-reflog-remote               ((t (:foreground ,oxford70))))

   ;; SMerge
   ;; `(smerge-refined-added           ((t (:background "#253325"))))
   ;; `(smerge-lower                   ((t (:background "#173017"))))
   ;;
   ;; Diff-hl
   `(diff-hl-insert                 ((t (:foreground ,cm :background ,cm))))
   `(diff-hl-change                 ((t (:foreground ,hl :background ,hl))))
   `(diff-hl-delete                 ((t (:foreground ,fg :background ,bg))))
   `(diff-error                     ((t (:foreground ,crimson))))

   `(eshell-prompt                  ((t (:bold t))))
   `(dired-directory                ((t (:foreground ,oxford50))))

   ;; Term & Popup
   ;; `(term-color-blue                ((t (:foreground ,blue :background ,blue))))
   ;; `(term-color-green               ((t (:foreground ,green :background ,green))))
   ;; `(term-color-red                 ((t (:foreground ,red :background ,red))))
   ;; `(popup-tip-face                 ((t (:background ,bg+4 :foreground ,fg))))
   ;; `(popup-isearch-match            ((t (:background "#CFA300" :foreground "black"))))
   ;; `(tooltip                        ((t ())))

   ;; Emacs Rime
   `(rime-preedit-face              ((t (:underline t))))
   `(rime-cursor-face               ((t (:inherit font-lock-constant-face))))
   `(rime-indicator-face            ((t ())))
   `(rime-indicator-dim-face        ((t ())))
   `(rime-candidate-num-face        ((t ())))
   `(rime-comment-face              ((t ())))
   `(rime-code-face                 ((t (:bold t))))
   `(rime-default-face              ((t ())))
   `(rime-highlight-candidate-face  ((t ())))

   ;; Markdown
   `(markdown-header-face-1             ((t (:bold t :height ,(nth 0 theme-header-scale)))))
   `(markdown-header-face-2             ((t (:bold t :height ,(nth 1 theme-header-scale)))))
   `(markdown-header-face-3             ((t (:bold t :height ,(nth 2 theme-header-scale)))))
   `(markdown-header-face-4             ((t (:bold t))))
   `(markdown-header-face-5             ((t ())))
   `(markdown-header-face-6             ((t ())))
   `(markdown-pre-face                  ((t (:inherit default :foreground ,cm))))
   `(markdown-url-face                  ((t (:foreground ,cm))))
   `(markdown-code-face                 ((t (:inherit default))))
   `(markdown-inline-code-face          ((t (:inherit default :foreground ,claret))))
   `(markdown-highlighting-face         ((t (:background ,hl))))

   ;; Telega
   `(telega-entity-type-code        ((t ())))
   `(telega-msg-heading             ((t ())))
   `(telega-msg-self-title          ((t (:foreground ,light-blue))))
   `(telega-unmuted-count           ((t ())))

   ;; LaTeX
   `(font-latex-sectioning-1-face ((t (:inherit default))))
   `(font-latex-sectioning-2-face ((t (:inherit default))))
   `(font-latex-sectioning-3-face ((t (:inherit default))))
   `(font-latex-sectioning-4-face ((t (:inherit default))))
   `(font-latex-sectioning-5-face ((t (:inherit default))))
   `(font-latex-warning-face      ((t (:foreground ,crimson))))

   ;; Org-mode
   `(org-document-title        ((t (:bold t :height ,(nth 0 theme-header-scale)))))
   `(org-link                  ((t (:foreground ,sblue :underline t))))
   `(org-level-1               ((t (:foreground ,black :bold t))))
   `(org-level-2               ((t (:foreground ,fg))))
   `(org-level-3               ((t (:foreground ,cm))))
   `(org-level-4               ((t ())))
   `(org-level-5               ((t ())))
   `(org-level-6               ((t ())))
   `(org-level-7               ((t ())))
   `(org-todo                  ((t (:foreground ,crimson :bold t))))
   `(org-block                 ((t ())))
   `(org-code                  ((t (:foreground ,gd-blue))))
   `(org-property-value        ((t (:inherit nil))))
   `(org-drawer                ((t (:foreground ,matisse))))
   `(org-date                  ((t (:foreground ,velvet))))
   `(org-footnote              ((t (:foreground ,oxford))))
   `(org-quote                 ((t (:extend t))))
   `(org-verse                 ((t (:extend t))))
   `(org-block-begin-line      ((t (:foreground ,sgrey))))
   `(org-block-end-line        ((t (:foreground ,sgrey))))

   `(fill-column-indicator          ((t (:foreground ,cm))))
   `(scroll-bar                     ((t (:foreground ,fg))))
   `(parenthesis                    ((t (:foreground ,cm))))
   `(eldoc-box-body                 ((t (:background ,tgrey :inherit default))))
   `(flycheck-fringe-warning        ((t (:foreground ,cyellow))))
   `(flycheck-warning               ((t (:underline (:style wave :color ,hl)))))
   `(flycheck-info                  ((t (:underline (:style wave :color ,cyellow)))))
   `(flycheck-error                 ((t (:underline (:style wave :color ,claret)))))
   `(flycheck-error-list-info       ((t (:foreground ,teal))))
   `(flycheck-error-list-warning    ((t (:foreground ,cyellow))))
   `(flymake-warning                ((t (:underline (:style wave :color ,hl)))))
   `(flymake-error                  ((t (:underline (:style wave :color ,claret)))))
   `(flymake-note                   ((t (:underline (:style wave :color ,cm)))))
   `(wgrep-face                     ((t (:underline ,velvet))))
   `(erc-nick-default-face          ((t (:inherit font-lock-keyword-face))))
   `(erc-input-face                 ((t (:inherit font-lock-function-name-face))))
   `(erc-timestamp-face             ((t (:inherit font-lock-constant-face))))
   `(erc-notice-face                ((t (:inherit font-lock-comment-face))))

   ;; tab bar
   `(tab-bar                        ((t (:background ,bg :foreground ,fg))))
   `(tab-bar-tab                    ((t (:inverse-video t :bold t))))
   `(tab-bar-tab-inactive           ((t ())))
   `(ansi-color-blue                ((t (:foreground ,oxford))))
   `(ansi-color-bright-blue         ((t (:foreground ,select))))
   `(embark-keybinding              ((t (:inherit font-lock-constant-face))))

   ;; lsp: disable all lsp syntax highlighting
   ;; https://emacs-lsp.github.io/lsp-mode/page/settings/semantic-tokens/
   `(lsp-modeline-code-actions-face ((t (:foreground ,fg))))
   `(lsp-modeline-code-actions-preferred-face ((t (:foreground ,teal))))
   `(lsp-face-semhl-comment ((t ())))
   `(lsp-face-semhl-constant ((t ())))
   `(lsp-face-semhl-default-library ((t ())))
   `(lsp-face-semhl-definition ((t ())))
   ;; `(lsp-face-semhl-deprecated ((t ())))
   `(lsp-face-semhl-enum ((t ())))
   `(lsp-face-semhl-event ((t ())))
   `(lsp-face-semhl-function ((t ())))
   `(lsp-face-semhl-implemntation ((t ())))
   `(lsp-face-semhl-interface ((t ())))
   `(lsp-face-semhl-keyword ((t ())))
   `(lsp-face-semhl-label ((t ())))
   `(lsp-face-semhl-macro ((t ())))
   `(lsp-face-semhl-member ((t ())))
   `(lsp-face-semhl-method ((t ())))
   `(lsp-face-semhl-namespace ((t ())))
   `(lsp-face-semhl-number ((t ())))
   `(lsp-face-semhl-operator ((t ())))
   `(lsp-face-semhl-parameter ((t ())))
   `(lsp-face-semhl-property ((t ())))
   `(lsp-face-semhl-regexp ((t ())))
   `(lsp-face-semhl-static ((t ())))
   `(lsp-face-semhl-string ((t ())))
   `(lsp-face-semhl-struct ((t ())))
   `(lsp-face-semhl-type ((t ())))
   `(lsp-face-semhl-type-parameter ((t ())))
   `(lsp-face-semhl-variable ((t ())))))

(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'ft)

;;; ft-theme.el ends here
