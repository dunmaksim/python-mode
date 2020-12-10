;;; py-ert-always-split-lp-1361531-tests.el --- Test splitting

;; Copyright (C) 2011-2014, 2020  Andreas Röhler
;; Author: Andreas Röhler <andreas.roehler@online.de>
;; Keywords: languages, convenience

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This file is generated by function from python-mode-utils.el - see in
;; directory devel. Edits here might not be persistent.

;;; Code:


(ert-deftest py-ert-always-split-dedicated-lp-1361531-python-test ()
  (py-test-with-temp-buffer
      "#! /usr/bin/env python
# -*- coding: utf-8 -*-
print(\"I'm the py-always-split-dedicated-lp-1361531-python-test\")"
    (delete-other-windows)
    (let* ((py-split-window-on-execute 'always)
	   (erg1 (progn (py-execute-statement-python-dedicated) py-output-buffer))
	   (erg2 (progn (py-execute-statement-python-dedicated) py-output-buffer)))
      (sit-for 1 t)
      (when py--debug-p (message "(count-windows) %s" (count-windows)))
      (should (< 2 (count-windows)))
      (py-kill-buffer-unconditional erg1)
      (py-kill-buffer-unconditional erg2)
      (py-restore-window-configuration))))

(ert-deftest py-ert-always-split-dedicated-lp-1361531-ipython-test ()
  (py-test-with-temp-buffer
      "#! /usr/bin/env ipython
# -*- coding: utf-8 -*-
print(\"I'm the py-always-split-dedicated-lp-1361531-ipython-test\")"
    (delete-other-windows)
    (let* ((py-split-window-on-execute 'always)
	   (erg1 (progn (py-execute-statement-ipython-dedicated) py-output-buffer))
	   (erg2 (progn (py-execute-statement-ipython-dedicated) py-output-buffer)))
      (sit-for 1 t)
      (when py--debug-p (message "(count-windows) %s" (count-windows)))
      (should (< 2 (count-windows)))
      (py-kill-buffer-unconditional erg1)
      (py-kill-buffer-unconditional erg2)
      (py-restore-window-configuration))))

(ert-deftest py-ert-always-split-dedicated-lp-1361531-jython-test ()
  (py-test-with-temp-buffer
      "#! /usr/bin/env jython
# -*- coding: utf-8 -*-
print(\"I'm the py-always-split-dedicated-lp-1361531-jython-test\")"
    (delete-other-windows)
    (let* ((py-split-window-on-execute 'always)
	   (erg1 (progn (py-execute-statement-jython-dedicated) py-output-buffer))
	   (erg2 (progn (py-execute-statement-jython-dedicated) py-output-buffer)))
      (sit-for 1 t)
      (when py--debug-p (message "(count-windows) %s" (count-windows)))
      (should (< 2 (count-windows)))
      (py-kill-buffer-unconditional erg1)
      (py-kill-buffer-unconditional erg2)
      (py-restore-window-configuration))))

(ert-deftest py-ert-always-split-dedicated-lp-1361531-python3-test ()
  (py-test-with-temp-buffer
      "#! /usr/bin/env python3
# -*- coding: utf-8 -*-
print(\"I'm the py-always-split-dedicated-lp-1361531-python3-test\")"
    (delete-other-windows)
    (let* ((py-split-window-on-execute 'always)
	   (erg1 (progn (py-execute-statement-python3-dedicated) py-output-buffer))
	   (erg2 (progn (py-execute-statement-python3-dedicated) py-output-buffer)))
      (sit-for 1 t)
      (when py--debug-p (message "(count-windows) %s" (count-windows)))
      (should (< 2 (count-windows)))
      (py-kill-buffer-unconditional erg1)
      (py-kill-buffer-unconditional erg2)
      (py-restore-window-configuration))))

;; py-ert-always-split-lp-1361531-tests.el ends here
(provide 'py-ert-always-split-lp-1361531-tests)
