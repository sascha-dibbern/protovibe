rem This runs a single Firefox-webbrowser instance without CORS-security for testing on a local html-file.
rem !!! Please do not surf to any webpages outside of this example from that Firefox-webbrowser instance (and parallel started instanses), as this might introduce some security concerns for your computer. !!!
rem !!! Also undo below changes when you will (re-)use your Firefox-browser again for normal internet surfing !!!

rem BEFORE DEMO-EXECUTION DO FOLLOWING MODIFICATIONS
rem Configure Firefox to run without CORS-security:
rem Go into webpage "about:config" and search policy items and set their values
rem content.cors.disable=>true
rem network.cors_preflight.authorization_covered_by_wildcard=>false
rem security.fileuri.strict_origin_policy => false

set URI="file:///%cd%/index.html"
"C:\Program Files\Mozilla Firefox\firefox.exe" %URI%

rem AFTER DEMO-EXECUTION DO FOLLOWING MODIFICATIONS TO ENSURE REESTABLISHING CORS-security
rem Configure (reset) Firefox to run with CORS-security again:
rem Go into webpage "about:config" and search policy items and set their values
rem content.cors.disable=>false
rem network.cors_preflight.authorization_covered_by_wildcard=>true
rem security.fileuri.strict_origin_policy => true
