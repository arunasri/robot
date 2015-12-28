*** Settings ***
Library  Selenium2Library
Suite Setup  open browser  ${BASE_URL}  ${BROWSER}
Suite Teardown   close all browsers

*** Keywords ***
*** Variables ***
${BASE_URL}  http://www.ebay.com/
${BROWSER}  chrome

*** Test Cases ***
opening browser
    wait until page contains  ebay

Verifying Scrapbooking links
    go to  http://www.ebay.com/rpp/crafts/
    mouse over  //*[@id="mainContent"]/div[3]/ul/li[1]/ul/li[1]/a
    element should be visible  //*[@id="mainContent"]/div[3]/ul/li[1]/ul/li[1]/ul/li[1]/a  Paper Crafts
    element should be visible  //*[@id="mainContent"]/div[3]/ul/li[1]/ul/li[1]/ul/li[2]/a  Scrapbooking Tools
    element should be visible  //*[@id="mainContent"]/div[3]/ul/li[1]/ul/li[1]/ul/li[3]/a  Scrapbooking & Paper Pages
    element should be visible  //*[@id="mainContent"]/div[3]/ul/li[1]/ul/li[1]/ul/li[4]/a  Organizers & Carriers