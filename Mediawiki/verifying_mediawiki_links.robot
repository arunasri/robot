*** Settings ***
Library  Selenium2Library
Suite Setup  open browser  ${BASE_URL}  ${BROWSER}
Suite Teardown  close all browsers

*** Variables ***
${BASE_URL}  https://www.mediawiki.org/wiki/MediaWiki
${BROWSER}  chrome

*** Test Cases ***
opening browser
    wait until page contains  MediaWiki

verifying links in mediawiki browser

#Main page label
    element should contain  //*[@id="n-mainpage-description"]/a  Main page
    element should contain  //*[@id="n-mw-download"]/a  Get MediaWiki
    element should contain  //*[@id="n-mw-extensions"]/a  Get extensions
    element should contain  //*[@id="n-blog-text"]/a  Tech blog
    element should contain  //*[@id="n-mw-contribute"]/a  Contribute

#Support label
    element should contain  //*[@id="p-support-label"]  Support
    element should contain  //*[@id="n-help"]/a  User help
    element should contain  //*[@id="n-mw-faq"]/a  FAQ
    element should contain  //*[@id="n-mw-manual"]/a  Technical manual
    element should contain  //*[@id="n-mw-supportdesk"]/a  Support desk
    element should contain  //*[@id="n-mw-communication"]/a  Communication

#Development label
    element should contain  //*[@id="p-development-label"]  Development
    element should contain  //*[@id="n-mw-bugtracker"]/a  Bug tracker
    element should contain  //*[@id="n-mw-repo-browse"]/a  Code repository
    element should contain  //*[@id="n-phpdoc"]/a  Code docs
    element should contain  //*[@id="n-svn-statistics"]/a  Statistics
    element should contain  //*[@id="n-mw-wikimedia-engineering"]/a  Wikimedia engineering

#mainpage links
    element should contain  //*[@id="mainpage_sitelinks"]/p/b[1]/a  About this site
    element should contain  //*[@id="mainpage_sitelinks"]/p/b[2]/a  About MediaWiki
    element should contain  //*[@id="mainpage_sitelinks"]/p/b[3]/a  Download
    element should contain  //*[@id="mainpage_sitelinks"]/p/b[4]/a  Help and support
    element should contain  //*[@id="mainpage_sitelinks"]/p/b[5]/a  Contribute


*** Keywords ***



