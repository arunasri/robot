*** Settings ***
Library  Selenium2Library
Suite Setup  open browser  ${BASE_URL}    ${BROWSER}
Suite Teardown   close all browsers

*** Variables ***
${BASE_URL}  https://www.yahoo.com
${BROWSER}  chrome

*** Test Cases ***
opening yahoo browser
    page should contain link  Yahoo

verifying search web button on yahoo webpage
    wait until page contains  My Yahoo
    page should contain button  Search Web

Verifying Signin link
    wait until page contains  Sign In

Verifying elements
    page should contain link  Mail
    page should contain link  News
    page should contain link  Sports
    page should contain link  Finance
    page should contain link  Weather
    page should contain link  Autos
    page should contain link  Fantasy
    page should contain link  Screen
    page should contain link  Dating
    page should contain link  Shopping
    page should contain link  Makers
    page should contain link  Parenting
    page should contain link  Health
    page should contain link  Style
    page should contain link  Beauty
    page should contain link  Politics
    page should contain link  Movies
    page should contain link  Travel
    page should contain link  Tech
    page should contain link  TV

*** Keywords ***
