;;; nattdans-theme.el --- Nattdans, an adaption of the Emacs Tango-dark theme -*- lexical-binding:t -*-

;; Copyright (C) 2010-2025 Free Software Foundation, Inc.
;; Copyright (C) 2026 Marcus Lundgren <marcus.lundgren@gmail.com>

;; Authors: Chong Yidong <cyd@stupidchicken>
;;          Jan Moringen <jan.moringen@uni-bielefeld.de>
;;          Marcus Lundgren <marcus.lundgren@gmail.com>

;; This file is part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; This is an adaptation of the Emacs Tango-dark theme, originally part of GNU Emacs.
;; The colors in this theme come from the Tango palette, which is in
;; the public domain: http://tango.freedesktop.org/

;;; Code:

;;;###theme-autoload
(deftheme nattdans
  "Face colors using a modified Tango palette (dark background).
Basic, Font Lock, Isearch, Gnus, Message, Ediff, Flyspell,
Semantic, and Ansi-Color faces are included."
  :background-mode 'dark
  :kind 'color-scheme
  :family 'tango)


(let ((class '((class color) (min-colors 89)))
      ;; Tango palette colors.
      (butter-1 "#fce94f") (butter-2 "#edd400") (butter-3 "#c4a000")
      (orange-1 "#fcaf3e") (orange-2 "#f57900") (orange-3 "#ce5c00")
      (choc-1 "#e9b96e") (choc-2 "#c17d11") (choc-3 "#8f5902")
      (cham-1 "#8ae234") (cham-2 "#73d216") (cham-3 "#4e9a06")
      (blue-1 "#729fcf") (blue-2 "#3465a4") (blue-3 "#204a87")
      (plum-1 "#e090d7") (plum-2 "#75507b") (plum-3 "#5c3566")
      (red-1 "#ef2929")  (red-2 "#cc0000")  (red-3 "#a40000")
      (alum-1 "#eeeeec") (alum-2 "#d3d7cf") (alum-3 "#babdb6")
      (alum-4 "#888a85") (alum-5 "#555753") (alum-6 "#2e3436")
      ;; Not in Tango palette; used for better contrast.
      (cham-0 "#b4fa70") (blue-0 "#8cc4ff") (plum-0 "#e9b2e3")
      (red-0 "#ff4b4b")  (alum-5.5 "#41423f") (alum-7 "#212526")
      ;; Not in Tango palette; used for ANSI cyan.
      (cyan-1 "#34e2e2") (cyan-2 "#06989a"))

  (custom-theme-set-faces
   'nattdans
   ;; Ensure sufficient contrast on low-color terminals.
   `(default ((,class (:background "#1e1e1e" :foreground "#eeeeec"))))
   `(bold ((,class (:foreground "deep sky blue" :weight bold))))
   `(diff-indicator-added ((,class (:inherit diff-added :foreground "SeaGreen1"))))
   `(error ((,class (:foreground "dark orange"))))
   `(font-lock-comment-face ((,class (:foreground "dark gray" :slant italic))))
   `(icomplete-selected-match ((,class (:box (:line-width (2 . 2) :color "grey75" :style released-button)))))
   `(ido-only-match ((,class (:foreground "lime green"))))
   `(ido-subdir ((,class (:foreground "dark orange"))))
   `(info-menu-star ((,class (:foreground "dark orange"))))
   `(line-number ((,class (:inherit (shadow default) :foreground "gray40"))))
   `(line-number-current-line ((,class (:weight semi-bold :foreground "yellow" :inherit line-number))))
   '(diff-refine-removed ((t (:inherit diff-refine-changed :background "#ff4444"))))
   `(magit-diff-context-highlight ((,class (:extend t :background "#114" :foreground "grey70"))))
   `(magit-log-author ((,class (:foreground "goldenrod" :slant normal :weight normal))))
   `(markdown-bold-face ((,class (:inherit bold :weight ultra-bold))))
   `(org-level-4 ((,class (:inherit outline-4 :foreground "dark turquoise"))))
   `(term-color-blue ((,class (:background "DeepSkyBlue2" :foreground "DeepSkyBlue2"))))
   `(term-color-green ((,class (:background "lawn green" :foreground "lawn green"))))
   `(term-color-red ((,class (:background "dark orange" :foreground "dark orange"))))
   `(cursor ((,class (:background ,butter-1))))
   `(header-line ((,class (:background "#666"))))
   ;; Highlighting faces
   `(fringe ((,class (:background ,alum-7))))
   `(highlight ((,class (:foreground ,alum-6 :background "#c0c000"))))
   `(region ((,class (:background ,alum-5))))
   `(secondary-selection ((,class (:background ,blue-3))))
   `(isearch ((,class (:foreground ,alum-1 :background ,orange-3))))
   `(lazy-highlight ((,class (:background ,choc-3))))
   `(trailing-whitespace ((,class (:background ,red-3))))
   ;; Mode line faces
   `(mode-line ((,class
		 (:box (:line-width -1 :style released-button)
		  :background ,alum-2 :foreground ,alum-6))))
   `(mode-line-inactive ((,class
			  (:box (:line-width -1 :style released-button)
			   :background ,alum-5 :foreground ,alum-1))))
   `(compilation-mode-line-fail ((,class (:foreground ,red-3))))
   `(compilation-mode-line-run  ((,class (:foreground ,orange-3))))
   `(compilation-mode-line-exit ((,class (:foreground ,cham-3))))
   ;; Escape and prompt faces
   `(minibuffer-prompt ((,class (:foreground ,cham-0))))
   `(escape-glyph ((,class (:foreground ,butter-3))))
   `(homoglyph ((,class (:foreground ,butter-3))))
   `(error ((,class (:foreground ,red-0))))
   `(warning ((,class (:foreground ,orange-1))))
   `(success ((,class (:foreground ,cham-1))))
   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground ,plum-1))))
   `(font-lock-comment-face ((,class (:foreground ,cham-2))))
   `(font-lock-constant-face ((,class (:foreground ,plum-0))))
   `(font-lock-function-name-face ((,class (:foreground ,butter-1))))
   `(font-lock-keyword-face ((,class (:foreground ,cham-0))))
   `(font-lock-string-face ((,class (:foreground ,choc-1))))
   `(font-lock-type-face ((,class (:foreground ,blue-0))))
   `(font-lock-variable-name-face ((,class (:foreground ,orange-1))))
   ;; Button and link faces
   `(link ((,class (:underline t :foreground ,blue-1))))
   `(link-visited ((,class (:underline t :foreground ,blue-2))))
   ;; Gnus faces
   `(gnus-group-news-1 ((,class (:foreground ,plum-1))))
   `(gnus-group-news-1-low ((,class (:foreground ,plum-2))))
   `(gnus-group-news-2 ((,class (:foreground ,blue-1))))
   `(gnus-group-news-2-low ((,class (:foreground ,blue-2))))
   `(gnus-group-news-3 ((,class (:foreground ,cham-1))))
   `(gnus-group-news-3-low ((,class (:foreground ,cham-2))))
   `(gnus-group-news-4 ((,class (:foreground ,plum-0))))
   `(gnus-group-news-4-low ((,class (:foreground ,choc-2))))
   `(gnus-group-news-5 ((,class (:foreground ,orange-1))))
   `(gnus-group-news-5-low ((,class (:foreground ,orange-2))))
   `(gnus-group-news-low ((,class (:foreground ,butter-2))))
   `(gnus-group-mail-1 ((,class (:foreground ,plum-1))))
   `(gnus-group-mail-1-low ((,class (:foreground ,plum-2))))
   `(gnus-group-mail-2 ((,class (:foreground ,blue-1))))
   `(gnus-group-mail-2-low ((,class (:foreground ,blue-2))))
   `(gnus-group-mail-3 ((,class (:foreground ,cham-1))))
   `(gnus-group-mail-3-low ((,class (:foreground ,cham-2))))
   `(gnus-group-mail-low ((,class (:foreground ,butter-2))))
   `(gnus-header-content ((,class (:weight normal :foreground ,butter-3))))
   `(gnus-header-from ((,class (:foreground ,butter-2))))
   `(gnus-header-subject ((,class (:foreground ,cham-1))))
   `(gnus-header-name ((,class (:foreground ,blue-1))))
   `(gnus-header-newsgroups ((,class (:foreground ,choc-2))))
   ;; Message faces
   `(message-header-name ((,class (:foreground ,blue-1))))
   `(message-header-cc ((,class (:foreground ,butter-3))))
   `(message-header-other ((,class (:foreground ,choc-2))))
   `(message-header-subject ((,class (:foreground ,cham-1))))
   `(message-header-to ((,class (:foreground ,butter-2))))
   `(message-cited-text ((,class (:foreground ,cham-1))))
   `(message-separator ((,class (:foreground ,plum-1))))
   ;; SMerge faces
   `(smerge-refined-change ((,class (:background ,blue-3))))
   ;; Ediff faces
   `(ediff-current-diff-A ((,class (:background ,alum-5))))
   `(ediff-fine-diff-A ((,class (:background ,blue-3))))
   `(ediff-even-diff-A ((,class (:background ,alum-5.5))))
   `(ediff-odd-diff-A ((,class (:background ,alum-5.5))))
   `(ediff-current-diff-B ((,class (:background ,alum-5))))
   `(ediff-fine-diff-B ((,class (:background ,choc-3))))
   `(ediff-even-diff-B ((,class (:background ,alum-5.5))))
   `(ediff-odd-diff-B ((,class (:background ,alum-5.5))))
   ;; Flyspell faces
   `(flyspell-duplicate ((,class (:underline ,orange-1))))
   `(flyspell-incorrect ((,class (:underline ,red-1))))
   ;; Realgud
   `(realgud-overlay-arrow1  ((,class (:foreground "green"))))
   `(realgud-overlay-arrow2  ((,class (:foreground ,orange-1))))
   `(realgud-overlay-arrow3  ((,class (:foreground ,plum-0))))
   `(realgud-bp-disabled-face      ((,class (:foreground ,blue-3))))
   `(realgud-bp-line-enabled-face  ((,class (:underline "red"))))
   `(realgud-bp-line-disabled-face ((,class (:underline ,blue-3))))
   `(realgud-file-name             ((,class :foreground ,blue-1)))
   `(realgud-line-number           ((,class :foreground ,plum-0)))
   `(realgud-backtrace-number      ((,class :foreground ,plum-0 :weight bold)))
   ;; Semantic faces
   `(semantic-decoration-on-includes ((,class (:underline ,alum-4))))
   `(semantic-decoration-on-private-members-face
     ((,class (:background ,plum-3))))
   `(semantic-decoration-on-protected-members-face
     ((,class (:background ,choc-3))))
   `(semantic-decoration-on-unknown-includes
     ((,class (:background ,red-3))))
   `(semantic-decoration-on-unparsed-includes
     ((,class (:background ,alum-5.5))))
   `(semantic-tag-boundary-face ((,class (:overline ,blue-1))))
   `(semantic-unmatched-syntax-face ((,class (:underline ,red-1))))
   ;; ANSI colors
   `(ansi-color-black ((,class (:background "#212526" :foreground "#212526"))))
   `(ansi-color-red ((,class (:background "#ff4b4b" :foreground "#ff4b4b"))))
   `(ansi-color-green ((,class (:background "#b4fa70" :foreground "#b4fa70"))))
   `(ansi-color-yellow ((,class (:background "#fce94f" :foreground "#fce94f"))))
   `(ansi-color-blue ((,class (:background "#729fcf" :foreground "#729fcf"))))
   `(ansi-color-magenta ((,class (:background "#e090d7" :foreground "#e090d7"))))
   `(ansi-color-cyan ((,class (:background "#8cc4ff" :foreground "#8cc4ff"))))
   `(ansi-color-white ((,class (:background "#eeeeec" :foreground "#eeeeec"))))
   `(ansi-color-bright-black ((,class (:background ,alum-5
				       :foreground ,alum-5))))
   `(ansi-color-bright-red ((,class (:background ,red-0 :foreground ,red-0))))
   `(ansi-color-bright-green ((,class (:background ,cham-1
				       :foreground ,cham-1))))
   `(ansi-color-bright-yellow ((,class (:background ,butter-1
					:foreground ,butter-1))))
   `(ansi-color-bright-blue ((,class (:background ,blue-0
				      :foreground ,blue-0))))
   `(ansi-color-bright-magenta ((,class (:background ,plum-0
					 :foreground ,plum-0))))
   `(ansi-color-bright-cyan ((,class (:background ,cyan-1
				      :foreground ,cyan-1))))
   `(ansi-color-bright-white ((,class (:background ,alum-1
				       :foreground ,alum-1))))))

(provide-theme 'nattdans)

;;; nattdans-theme.el ends here
