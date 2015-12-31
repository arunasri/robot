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
    element should contain     //*[@id="mw-panel"]/div[2]//li[1]/a   Main page
    element should contain     //*[@id="mw-panel"]/div[2]//li[2]/a   Get MediaWiki
    element should contain     //*[@id="mw-panel"]/div[2]//li[3]/a   Get extensions
    element should contain     //*[@id="mw-panel"]/div[2]//li[4]/a   Tech blog
    element should contain     //*[@id="mw-panel"]/div[2]//li[5]/a   Contribute

#Support label
    element should contain  //*[@id="mw-panel"]/div[3]/h3        Support
    element should contain  //*[@id="mw-panel"]/div[3]//li[1]/a  User help
    element should contain  //*[@id="mw-panel"]/div[3]//li[2]/a  FAQ
    element should contain  //*[@id="mw-panel"]/div[3]//li[3]/a  Technical manual
    element should contain  //*[@id="mw-panel"]/div[3]//li[4]/a  Support desk
    element should contain  //*[@id="mw-panel"]/div[3]//li[5]/a  Communication

#Development label
    element should contain  //*[@id="mw-panel"]/div[4]/h3        Development
    element should contain  //*[@id="mw-panel"]/div[4]//li[1]/a  Bug tracker
    element should contain  //*[@id="mw-panel"]/div[4]//li[2]/a  Code repository
    element should contain  //*[@id="mw-panel"]/div[4]//li[3]/a  Code docs
    element should contain  //*[@id="mw-panel"]/div[4]//li[4]/a  Statistics
    element should contain  //*[@id="mw-panel"]/div[4]//li[5]/a  Wikimedia engineering

#mainpage links
    element should contain  //*[@id="mainpage_sitelinks"]/p/b[1]/a  About this site
    element should contain  //*[@id="mainpage_sitelinks"]/p/b[2]/a  About MediaWiki
    element should contain  //*[@id="mainpage_sitelinks"]/p/b[3]/a  Download
    element should contain  //*[@id="mainpage_sitelinks"]/p/b[4]/a  Help and support
    element should contain  //*[@id="mainpage_sitelinks"]/p/b[5]/a  Contribute


*** Keywords ***



