*** Settings ***
Library  Selenium2Library
Suite Setup  open browser  ${BASE_URL}  ${BROWSER}
Suite Teardown   close all browsers

*** Keywords ***

*** Variables ***
${BASE_URL}  http://www.target.com
${BROWSER}  chrome
${str} =  my store${SPACE}

*** Test Cases ***
opening target browser
    open browser  http://www.target.com  chrome
    wait until page contains  shop all categories

Verifying links in target home page
    element text should be  jquery=#UserMenu  sign in / account
    #${text}  Get Text  jquery=#ShopNavMenu > li:nth-child(1) #mystoreText
    #log  ${text}
    element should contain  jquery=#ShopNavMenu > li:nth-child(1) #mystoreText  my store
    element text should be  jquery=#ShopNavMenu > li:nth-child(2) a  weekly ad
    element text should be  jquery=#ShopNavMenu > li:nth-child(3) a  gift cards
    element text should be  jquery=#ShopNavMenu > li:nth-child(4) a  lists / registries
    element text should be  jquery=#ShopNavMenu > li:nth-child(5) a  REDcard

    #element text should be  jquery=#OpenStorePopup span:first  ${str}


