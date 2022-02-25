(in-package "CLOG-TOOLS")
(defclass clog-templates (clog:clog-panel)
  (    (fill-button :reader fill-button)
    (template-box :reader template-box)
(win :accessor win)))
(defun create-clog-templates (clog-obj &key (hidden nil) (class nil) (html-id nil) (auto-place t))
  (let ((panel (change-class (clog:create-div clog-obj :content "<form action=\"#\" onsubmit=\"return false;\" target=\"_self\" style=\"box-sizing: content-box; position: static; left: 162px; top: 216px;\" id=\"CLOGB3854134560\"><label for=\"\" style=\"box-sizing: content-box; position: absolute; left: 7px; top: 6px; text-align: start; cursor: default; font: bold 15px / 22.5px Verdana, sans-serif&nbsp;; bottom: 211.5px;\" id=\"CLOGB3854134561\">Available Templates:</label><div style=\"box-sizing: content-box; position: absolute; inset: 35px 7px 45px;\" id=\"CLOGB3854134562\"><select size=\"4\" style=\"box-sizing: content-box; position: static; inset: 40px 5px 5px; width: 100%; height: 100%;\" id=\"CLOGB3854134563\"></select></div><button class=\"\" style=\"box-sizing: content-box; position: absolute; left: 7px; bottom: 5px;\" id=\"CLOGB3854134564\">Fill Template</button></form>"
         :hidden hidden :class class :html-id html-id :auto-place auto-place) 'clog-templates)))
    (setf (slot-value panel 'fill-button) (attach-as-child clog-obj "CLOGB3854134564" :clog-type 'CLOG:CLOG-BUTTON :new-id t))
    (setf (slot-value panel 'template-box) (attach-as-child clog-obj "CLOGB3854134563" :clog-type 'CLOG:CLOG-SELECT :new-id t))
    (set-on-click (fill-button panel) (lambda (target) (declare (ignorable target)) (fill-button-clicked panel)))
    panel))