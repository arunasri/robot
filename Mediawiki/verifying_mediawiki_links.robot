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
    [Tags]  Ok
    Page Should Contain Link    Main page
    Page Should Contain Link    Get MediaWiki
    Page Should Contain Link    Get extensions
    Page Should Contain Link    Tech blog
    Page Should Contain Link    Contribute
    element should contain     //*[@id="mw-panel"]/div[2]//li[1]/a   Main page
    element should contain     //*[@id="mw-panel"]/div[2]//li[2]/a   Get MediaWiki
    element should contain     //*[@id="mw-panel"]/div[2]//li[3]/a   Get extensions
    element should contain     //*[@id="mw-panel"]/div[2]//li[4]/a   Tech blog
    element should contain     //*[@id="mw-panel"]/div[2]//li[5]/a   Contribute

#Support label
    Page Should Contain Link    User help
    Page Should Contain Link    FAQ
    Page Should Contain Link    Technical manual
    Page Should Contain Link    Support desk
    Page Should Contain Link    Communication
    element should contain  //*[@id="mw-panel"]/div[3]/h3        Support
    element should contain  //*[@id="mw-panel"]/div[3]//li[1]/a  User help
    element should contain  //*[@id="mw-panel"]/div[3]//li[2]/a  FAQ
    element should contain  //*[@id="mw-panel"]/div[3]//li[3]/a  Technical manual
    element should contain  //*[@id="mw-panel"]/div[3]//li[4]/a  Support desk
    element should contain  //*[@id="mw-panel"]/div[3]//li[5]/a  Communication

#Development label
    Page Should Contain Link     Bug tracker
    Page Should Contain Link     Code repository
    Page Should Contain Link     Code docs
    Page Should Contain Link     Statistics
    Page Should Contain Link     Wikimedia engineering
    element should contain  //*[@id="mw-panel"]/div[4]/h3        Development
    element should contain  //*[@id="mw-panel"]/div[4]//li[1]/a  Bug tracker
    element should contain  //*[@id="mw-panel"]/div[4]//li[2]/a  Code repository
    element should contain  //*[@id="mw-panel"]/div[4]//li[3]/a  Code docs
    element should contain  //*[@id="mw-panel"]/div[4]//li[4]/a  Statistics
    element should contain  //*[@id="mw-panel"]/div[4]//li[5]/a  Wikimedia engineering

#mainpage links
    Page Should Contain Link     About this site
    Page Should Contain Link     About MediaWiki
    Page Should Contain Link     Download
    Page Should Contain Link     Help and support
    Page Should Contain Link     Contribute
    element should contain  //*[@id="mainpage_sitelinks"]/p/b[1]/a  About this site
    element should contain  //*[@id="mainpage_sitelinks"]/p/b[2]/a  About MediaWiki
    element should contain  //*[@id="mainpage_sitelinks"]/p/b[3]/a  Download
    element should contain  //*[@id="mainpage_sitelinks"]/p/b[4]/a  Help and support
    element should contain  //*[@id="mainpage_sitelinks"]/p/b[5]/a  Contribute


*** Keywords ***



