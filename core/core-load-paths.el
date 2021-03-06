;;; core-load-paths.el --- Spacemacs Core File
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3
(defun add-to-load-path (dir) (add-to-list 'load-path dir))

(defun add-to-load-path-if-exists (dir)
  "If DIR exists in the file system, add it to `load-path'."
  (when (file-exists-p dir)
      (add-to-load-path dir)))

;; paths
(defvar spacemacs-start-directory
  (concat user-emacs-directory "spacemacs-core/")
  "Spacemacs start directory.")
(defconst spacemacs-core-directory
  (expand-file-name (concat spacemacs-start-directory "core/"))
  "Spacemacs core directory.")
(defconst spacemacs-cache-directory
  (expand-file-name (concat user-emacs-directory ".cache/"))
  "Spacemacs storage area for persistent files")
(defconst spacemacs-auto-save-directory
  (expand-file-name (concat spacemacs-cache-directory "auto-save/"))
  "Spacemacs auto-save directory")
(defconst spacemacs-docs-directory
  (expand-file-name (concat spacemacs-start-directory "doc/"))
  "Spacemacs documentation directory.")
(defconst spacemacs-test-directory
  (expand-file-name (concat spacemacs-start-directory "tests/"))
  "Spacemacs tests directory.")

(defconst user-home-directory
  (expand-file-name "~/")
  "User home directory (~/).")
(defconst pcache-directory
  (concat spacemacs-cache-directory "pcache/"))
(unless (file-exists-p spacemacs-cache-directory)
    (make-directory spacemacs-cache-directory))

;; load paths
(mapc 'add-to-load-path
      `(
        ,spacemacs-core-directory
        ,(concat spacemacs-core-directory "libs/")
        ,(concat spacemacs-core-directory "libs/spacemacs-theme/")
        ;; ,(concat spacemacs-core-directory "aprilfool/")
        ))

;; themes
(add-to-list 'custom-theme-load-path (concat spacemacs-core-directory
                                             "libs/spacemacs-theme/"))

