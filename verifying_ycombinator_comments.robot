*** Settings ***
Library  Selenium2Library
Suite Setup  open browser  ${BASE_URL}  ${BROWSER}
Suite Teardown  close all browsers

*** Variables ***
${BASE_URL}  https://news.ycombinator.com/
${BROWSER}  chrome

*** Test Cases ***
opening Browser
    [Tags]      Ok
    wait until page contains  Hacker News
    ${count}   Get Matching Xpath Count  //*[@id="hnmain"]/tbody/tr[3]/td/table/tbody/tr[5]/td[2]/a[2][contains(text(), "comment")]
    Log To Console   ${count}

*** Keywords ***
