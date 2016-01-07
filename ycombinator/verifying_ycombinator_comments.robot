*** Settings ***
Library  Selenium2Library
Suite Setup  open browser  ${BASE_URL}  ${BROWSER}
Suite Teardown  close all browsers

*** Variables ***
${BASE_URL}  https://news.ycombinator.com/
${BROWSER}   chrome

*** Test Cases ***
opening Browser
    [Tags]      Ok
    wait until page contains  Hacker News
    #verifying comments count
    ${comment-COUNT}  get matching xpath count  //*[@id="hnmain"]/tbody/tr[3]/td/table/tbody//td[2]/a[2][contains(text(), "comment")]
    #log to console   ${COUNT}
    ${discuss-COUNT}  get matching xpath count  //*[@id="hnmain"]/tbody/tr[3]/td/table/tbody//td[2]/a[2][contains(text(),"discuss")]
    log to console   \nThe word "Comment"/"Comments" are appearing on page ${comment-COUNT} times; \nThe word "discuss" is appearing on page ${discuss-COUNT} times.
    log    \nThe word "Comment"/"Comments" are appearing on page ${comment-COUNT} times; \nThe word "discuss" is appearing on page ${discuss-COUNT} times.


*** Keywords ***
