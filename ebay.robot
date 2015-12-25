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

verifying links in ebay
    mouse over  //*[@id="gh-shop-a"]
    mouse over  //*[@id="gh-cat"]
    go to  http://www.ebay.com/rpp/crafts/
    element should be visible  //*[@id="mainContent"]/div[3]/ul/li[1]/ul/li[1]/a  Scrapbooking
    element should be visible  //*[@id="mainContent"]/div[3]/ul/li[1]/ul/li[2]/a  Sewing
    element should be visible  //*[@id="mainContent"]/div[3]/ul/li[1]/ul/li[3]/a  Yarn & Needlecrafts
    element should be visible  //*[@id="mainContent"]/div[3]/ul/li[1]/ul/li[4]/a  Home Arts & Crafts
    element should be visible  //*[@id="mainContent"]/div[3]/ul/li[1]/ul/li[5]/a  Shop All


