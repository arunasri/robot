*** Settings ***
Library  Selenium2Library
Suite Setup  open browser  ${BASE_URL}  ${BROWSER}
Suite Teardown  close all browsers

*** Variables ***
${BASE_URL}  https://news.ycombinator.com/
${BROWSER}  chrome

*** Test Cases ***
opening Browser
    wait until page contains  Hacker News
#verifying comments count
    ${COUNT}  get matching xpath count  //*[@id="hnmain"]/tbody/tr[3]/td/table/tbody//td[2]/a[2][contains(text(), "comment")]
    log to console   ${COUNT}

    ${COUNT}  get matching xpath count  //*[@id="hnmain"]/tbody/tr[3]/td/table/tbody//td[2]/a[2][contains(text(),"discuss")]
    log to console   ${COUNT}



*** Keywords ***
