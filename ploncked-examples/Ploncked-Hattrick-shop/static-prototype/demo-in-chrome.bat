rem This runs a single Chrome-webbrowser instance without CORS-security for testing on a local html-file
rem !!! Please do not surf to any webpages outside of this example from that Chrome-webbrowser instance, as this might introduce some security concerns for your computer. !!!
rem See more about disabling CORS under https://simplelocalize.io/blog/posts/what-is-cors/

set URI="file:///%cd%/index.html"
"C:\Program Files\Google\Chrome\Application\chrome.exe" --user-data-dir="C://chrome-dev-disabled-security" --disable-web-security --disable-site-isolation-trials %URI%
