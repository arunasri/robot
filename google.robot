*** Settings ***
Library  Selenium2Library
Suite Setup  open browser  ${BASE_URL}    ${BROWSER}
Suite Teardown   close all browsers

*** Variables ***
${BASE_URL}  https://www.google.com
${BROWSER}  chrome

*** Test Cases ***
opening google browser
    [Tags]  ok
    wait until page contains  Google


Verifying search button on page
    wait until page contains  Google Search
    page should contain button  Google Search



*** Keywords ***




