*** Settings ***
Library  Selenium2Library
Suite Setup  open browser  ${BASE_URL}  ${BROWSER}
Suite Teardown   close all browsers

*** Keywords ***

*** Variables ***
${BASE_URL}  http://www.target.com
${BROWSER}  firefox

*** Test Cases ***
opening target browser
    wait until page contains  shop all categories

verifying elements in catagories
    mouse over  //html/body/div[3]/div/div[1]/div[4]/div[1]/ul/li[1]/span/a
    wait until page contains  all clothing
    wait until page contains  women's clothing
    wait until page contains  men's clothing
    sleep  2
    mouse over  //html/body/div[3]/div/div[1]/div[4]/div[1]/ul/li[2]/span/a
    sleep  2
    page should contain link  all clothing
    page should contain link  women's clothing
    page should contain link  men's clothing
    #
