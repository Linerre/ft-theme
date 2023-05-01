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
      (black     "#000000")             ; fg
      (white     "#FFFFFF")             ; bg
      (ft-pink   "#FCD0B1")             ; darker bg that paper below
      (ft-grey   "#333333")

      ;; secondary palette
      ;; provide visual hierarchy to differentiate content and are brand identifiers of the FT
      (claret    "#990F3D")             ; ft-red
      (teal      "#0D7680")             ; ft-green for string
      (oxford    "#0F5499")             ; ft-blue
      (slate     "#262A33")             ; ft-dark-grey
      (paper     "#FFF1E5")             ; ft-paper-background
      (bg        "#FAF7F5")             ; ft-paper but more white
      ;; from ft print
      (tblue     "#004D6D")             ; top blue in graphics
      (mblue     "#95BFC5")             ; middle blue in graphics
      (bblue     "#0783BA")             ; bottom blue in graphics
      (sblue     "#66A1C6")             ; blue used for section title
      (cblue     "#3B6A90")             ; blue used in comparision with yellow
      (hblue     "#1479A1")             ; high contrast blue used for banner; fg should be white
      (cyellow   "#D3B73F")             ; yellow used in comparision with blue
      (sgrey     "#929397")             ; grey used for section header bg
      (select    "#E6E9E4")             ; 20% of light-blue
      (tgrey     "#E8EAEE")             ; grey for title area bg or popup
      (sec-bg    "#EFEFF0")             ; for section/bloack area bg
      (dark-blue "#006F9B")             ; ft-dark-blue for doc

      ;;teriary palette
      ;; Used sparingly, these colors provide contrast for highlighting and messaging.
      (bullet    "#F26638")             ; used for bullet point
      (light-blue "#00A0DD")
      (wheat     "#F2DFCE")             ; alternative bg
      (velvet    "#593380")             ; purple
      (sky       "#CCE6FF")             ; very pale blue
      (crimson   "#CC0000")             ; high-contrast red

      ;; lighter variantions of the above, prefiex with `l'
      (lblue     "#DBF1FF")            ; secondary selection, session background
      (lgreen    "#DBECB6")            ; git added
      (ad        "#B0D9A0")            ; git added highlit
      (rm        "#EBB9BC")            ; git removed highlight
      (cm        "#707070")
      (lh        "#0DA59B")
      (cur       "#363636")
      (doc       "#2D97A1")             ; docs: cyan
      (hl        "#FFBC5D"))            ; highlight: orange

  (custom-theme-set-faces
   'ft
   `(default                       ((((type tty)))
                                    (((type graphic)) :background ,bg :foreground ,black)))
   ;; Basics
   `(cursor                         ((t (:background ,cur))))
   `(region                         ((t (:background ,select :extend nil))))
   `(hl-line                        ((t (:background ,lblue))))
   `(fringe                         ((t (:background ,bg))))
   `(show-paren-match               ((t (:background ,cyellow :box (:line-width (-1 . -1) :style nil)))))
   `(highlight                      ((t (:background ,select :foreground ,black))))
   `(button                         ((t (:box (:line-width (-1 . -1))))))
   `(vertical-border                ((t ())))
   `(italic                         ((t (:slant italic :underline nil))))
   `(line-number-current-line       ((t (:foreground ,black :background ,hl))))
   `(completions-common-part        ((t (:bold t))))
   `(minibuffer-prompt              ((t ())))
   `(lazy-highlight                 ((t (:foreground ,lh :underline t))))
   `(compilation-info               ((t ())))
   `(compilation-warning            ((t ())))
   `(completions-highlight          ((t ())))
   `(warning                        ((t ())))
   `(match                          ((t (:background ,select))))
   `(secondary-selection            ((t (:background ,lblue :extend nil))))
   `(help-key-binding               ((t (:bold t))))
   `(shadow                         ((t (:foreground ,cm))))
   `(error                          ((t (:foreground ,claret))))
   ;; `(window-divider                 ((t (:foreground ,cm))))
   ;; `(window-divider-first-pixel     ((t (:foreground ,cm))))
   ;; `(window-divider-last-pixel      ((t (:foreground ,cm))))
   ;; `(line-number                    ((t (:foreground ,cm))))

   ;; ISearch
   `(isearch                        ((t (:background ,select :foreground ,black))))
   `(isearch-fail                   ((t (:background ,rm :foreground ,claret))))

   ;; Font Locks
   `(font-lock-comment-delimiter-face ((t (:foreground ,claret))))
   `(font-lock-string-face            ((t (:foreground ,teal))))
   `(font-lock-doc-face               ((t (:foreground ,dark-blue))))
   `(font-lock-builtin-face           ((t ())))
   `(font-lock-type-face              ((t ())))
   `(font-lock-variable-name-face     ((t ())))
   `(font-lock-keyword-face           ((t ())))
   `(font-lock-constant-face          ((t (:foreground ,oxford))))
   `(font-lock-function-name-face     ((t (:foreground ,bblue))))
   `(font-lock-warning-face           ((t ())))
   `(font-lock-preprocessor-face      ((t ())))
   `(font-lock-number-face            ((t (:foreground ,oxford))))
   `(highlight-numbers-number         ((t (:foreground ,oxford))))

   ;; shell
   `(sh-quoted-exec             ((t ())))
   `(sh-heredoc                 ((t (:foreground ,teal))))

   ;; IMenu
   `(imenu-list-entry-face-0          ((t ())))
   `(imenu-list-entry-subalist-face-0 ((t (:bold t))))

   ;; Mode Line
   `(tab-line                       ((t ())))
   `(mode-line                      ((t (:background ,black :foreground ,paper))))
   `(mode-line-inactive             ((t (:background ,paper :foreground ,black))))
   `(header-line                    ((t ())))
   `(header-line-inactive           ((t ())))

   ;; Yasnippet
   `(yas-field-highlight-face       ((t (:underline t))))

   ;; Company
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

   ;; Vertico
   `(vertico-current  ((t (:background ,lblue))))

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
   `(magit-section-highlight           ((t (:background ,lblue))))
   `(magit-section-heading             ((t (:foreground ,oxford))))
   `(magit-section-selection           ((t ())))
   `(magit-diff-removed                ((t (:background ,rm :foreground "gray50"))))
   `(magit-diff-removed-highlight      ((t (:background ,rm))))
   `(magit-diff-added                  ((t (:background ,ad :foreground "gray50"))))
   `(magit-diff-added-highlight        ((t (:background ,ad))))
   `(magit-diff-context-highlight      ((t (:background ,paper foreground ,black))))
   `(magit-diff-whitespace-warning     ((t (:foreground ,black))))

   ;; SMerge
   ;; `(smerge-refined-added           ((t (:background "#253325"))))
   ;; `(smerge-lower                   ((t (:background "#173017"))))
   ;;
   ;; Diff-hl
   `(diff-hl-insert                 ((t (:foreground ,cm :background ,cm))))
   `(diff-hl-change                 ((t (:foreground ,hl :background ,hl))))
   `(diff-hl-delete                 ((t (:foreground ,black background ,paper))))
   `(diff-error                     ((t (:foreground ,crimson))))

   `(eshell-prompt                  ((t (:bold t))))

   ;; Term
   ;; `(term-color-blue                ((t (:foreground ,blue :background ,blue))))
   ;; `(term-color-green               ((t (:foreground ,green :background ,green))))
   ;; `(term-color-red                 ((t (:foreground ,red :background ,red))))
   ;;
   ;; ;; Popup
   ;; `(popup-tip-face                 ((t (:background ,bg+4 :foreground ,fg))))
   ;; `(popup-isearch-match            ((t (:background "#CFA300" :foreground "black"))))
   ;;
   ;; `(tooltip                        ((t ())))
   ;; `(dired-directory                ((t (:foreground ,light-purple))))
   ;; `(web-mode-html-attr-name-face   ((t ())))
   ;; `(web-mode-html-tag-face         ((t ())))
   ;;
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

   ;; Org-mode
   `(org-document-title        ((t (:bold t :height ,(nth 0 theme-header-scale)))))
   `(org-link                  ((t (:foreground ,sblue :underline t))))
   `(org-code                  ((t (:inherit font-lock-constant-face))))
   `(org-level-1               ((t (:foreground ,black :bold t))))
   `(org-level-2               ((t (:foreground ,black))))
   `(org-level-3               ((t (:foreground ,cm))))
   `(org-level-4               ((t ())))
   `(org-level-5               ((t ())))
   `(org-level-6               ((t ())))
   `(org-level-7               ((t ())))
   `(org-code                  ((t (:background ,sec-bg :foreground ,crimson))))
   `(org-block                 ((t ())))
   `(org-quote                 ((t (:extend t))))
   `(org-verse                 ((t (:extend t))))
   `(org-block-begin-line      ((t (:foreground ,white :background ,sgrey :family "Monospace" :font "Monospace" :bold t :extend t))))
   `(org-block-end-line        ((t (:foreground ,white :background ,sgrey :family "Monospace" :font "Monospace" :bold t :extend t))))

   ;; Treemacs
   ;; `(treemacs-root-face             ((t (:inherit font-lock-function-name-face :height 1.4 :underline t))))
   `(fill-column-indicator          ((t (:foreground ,cm))))
   `(scroll-bar                     ((t (:foreground ,black))))
   `(parenthesis                    ((t (:foreground ,cm))))
   `(eldoc-box-body                 ((t (:background ,tgrey :inherit default))))

   `(flycheck-warning               ((t (:underline (:style wave :color ,hl)))))
   `(flycheck-info                  ((t (:underline (:style wave :color ,cyellow)))))
   `(flycheck-error                 ((t (:underline (:style wave :color ,claret)))))
   `(flycheck-error-list-info       ((t (:foreground ,black :background ,teal))))
   `(flymake-warning                ((t (:underline (:style wave :color ,hl)))))
   `(flymake-error                  ((t (:underline (:style wave :color ,claret)))))
   `(flymake-note                   ((t (:underline (:style wave :color ,cm)))))

   `(wgrep-face                     ((t (:underline ,velvet))))

   `(erc-nick-default-face          ((t (:inherit font-lock-keyword-face))))
   `(erc-input-face                 ((t (:inherit font-lock-function-name-face))))
   `(erc-timestamp-face             ((t (:inherit font-lock-constant-face))))
   `(erc-notice-face                ((t (:inherit font-lock-comment-face))))
   `(lsp-modeline-code-actions-face ((t (:foreground ,black))))
   `(lsp-modeline-code-actions-preferred-face ((t (:foreground ,hl))))


   `(tab-bar                        ((t (:background ,paper foreground ,black))))
   `(tab-bar-tab                    ((t (:inverse-video t :bold t))))
   `(tab-bar-tab-inactive           ((t ())))

   `(ansi-color-blue                ((t (:foreground ,oxford))))
   `(ansi-color-bright-blue         ((t (:foreground ,select))))
   `(yascroll:thumb-fringe          ((t (:foreground ,cm :background ,cm))))
   `(yascroll:thumb-text-area       ((t (:foreground ,cm :background ,cm))))
   `(yas-field-highlight-face       ((t (:foreground ,black background ,tblue))))
   `(embark-keybinding              ((t (:inherit font-lock-constant-face))))

   ;; which-key
   `(which-key-command-description-face     ((t :foreground ,oxford)))
   `(which-key-highlighted-command-face     ((t :foreground ,oxford)))
   `(which-key-local-map-description-face   ((t :foreground ,oxford)))

   ;; Treesitter
   `(tree-sitter-hl-face:type       ((t ())))
   `(tree-sitter-hl-face:type.parameter ((t ())))
   `(tree-sitter-hl-face:type.argument ((t ())))
   `(tree-sitter-hl-face:type.builtin ((t ())))
   `(tree-sitter-hl-face:type.super ((t ())))
   `(tree-sitter-hl-face:constructor ((t ())))
   `(tree-sitter-hl-face:constant.builtin ((t (:foreground ,oxford))))
   `(tree-sitter-hl-face:variable ((t ())))
   `(tree-sitter-hl-face:variable.parameter ((t ())))
   `(tree-sitter-hl-face:variable.builtin ((t ())))
   `(tree-sitter-hl-face:variable.special ((t ())))
   `(tree-sitter-hl-face:property ((t ())))
   `(tree-sitter-hl-face:property.definition ((t ())))
   `(tree-sitter-hl-face:comment ((t (:foreground ,claret))))
   ;;
   `(tree-sitter-hl-face:doc ((t (:foreground ,dark-blue))))
   `(tree-sitter-hl-face:string ((t (:foreground ,teal))))
   ;;
   `(tree-sitter-hl-face:string.special ((t (:foreground ,teal))))
   ;;
   `(tree-sitter-hl-face:escape ((t ())))
   `(tree-sitter-hl-face:embedded ((t ())))
   ;;
   `(tree-sitter-hl-face:keyword ((t ())))
   ;;
   `(tree-sitter-hl-face:function ((t (:foreground ,light-blue))))
   `(tree-sitter-hl-face:function.builtin ((t ())))
   `(tree-sitter-hl-face:function.call ((t ())))
   `(tree-sitter-hl-face:function.macro ((t ())))
   `(tree-sitter-hl-face:function.method ((t ())))
   `(tree-sitter-hl-face:function.method.call ((t ())))
   `(tree-sitter-hl-face:function.special ((t ())))

   `(tree-sitter-hl-face:method ((t ())))
   `(tree-sitter-hl-face:method.call ((t ())))
   `(tree-sitter-hl-face:operator ((t ())))
   `(tree-sitter-hl-face:punctuation ((t ())))
   `(tree-sitter-hl-face:punctuation.bracket ((t (:foreground ,cm))))
   `(tree-sitter-hl-face:punctuation.delimiter ((t ())))
   `(tree-sitter-hl-face:punctuation.special ((t ())))
   ;; dim
   `(tree-sitter-hl-face:label ((t ())))
   `(tree-sitter-hl-face:constant ((t ())))
   `(tree-sitter-hl-face:constant.builtin ((t (:foreground ,velvet))))
   ;;
   `(tree-sitter-hl-face:number ((t (:foreground ,velvet))))
   `(tree-sitter-hl-face:tag ((t ())))
   `(tree-sitter-hl-face:attribute ((t ())))))

(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'ft)

;;; ft-theme.el ends here
