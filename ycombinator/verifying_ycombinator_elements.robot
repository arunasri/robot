*** Settings ***
Library  Selenium2Library
Suite Setup  open browser  ${BASE_URL}  ${BROWSER}
Suite Teardown  close all browsers

*** Variables ***
${BASE_URL}  https://news.ycombinator.com/
${BROWSER}  chrome


*** Test Cases ***
opening browser
    wait until page contains  Hacker News

verifying elements in ycombinator browser
    element should be visible  //*[@id="hnmain"]/tbody/tr[4]/td/center/span/a[1]  Guidelines
    element should be visible  //*[@id="hnmain"]/tbody/tr[4]/td/center/span/a[2]  FAQ
    element should be visible  //*[@id="hnmain"]/tbody/tr[4]/td/center/span/a[3]  Support
    element should be visible  //*[@id="hnmain"]/tbody/tr[4]/td/center/span/a[4]  API
    element should be visible  //*[@id="hnmain"]/tbody/tr[4]/td/center/span/a[5]  Security
    element should be visible  //*[@id="hnmain"]/tbody/tr[4]/td/center/span/a[6]  Lists
    element should be visible  //*[@id="hnmain"]/tbody/tr[4]/td/center/span/a[7]  Bookmarklet
    element should be visible  //*[@id="hnmain"]/tbody/tr[4]/td/center/span/a[8]  DMCA
    element should be visible  //*[@id="hnmain"]/tbody/tr[4]/td/center/span/a[9]  Apply to YC
    element should be visible  //*[@id="hnmain"]/tbody/tr[4]/td/center/span/a[10]  Contact

*** Keywords ***
