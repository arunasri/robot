*** Settings ***
Library  Selenium2Library
Suite Setup  open browser  ${BASE_URL}  ${BROWSER}
Suite Teardown  close all browsers

*** Variables ***
${BASE_URL}  https://www.yahoo.com
${BROWSER}  ff

*** Test Cases ***
opening yahoo browser
    page should contain link  Yahoo

verifying search web button on yahoo webpage
    wait until page contains  My Yahoo
    page should contain button  Search Web

Verifying Signin link
    wait until page contains  Sign In

Verifying elements
  element should contain  //*[@id="default-p_30345789-bd"]/ul[1]/li[1]/a  Mail
  element should contain  //*[@id="default-p_30345789-bd"]/ul[1]/li[2]/a  News
  element should contain  //*[@id="default-p_30345789-bd"]/ul[1]/li[3]/a  Sports
  element should contain  //*[@id="default-p_30345789-bd"]/ul[1]/li[4]/a  Finance
  element should contain  //*[@id="default-p_30345789-bd"]/ul[1]/li[5]/a  Weather
  element should contain  //*[@id="default-p_30345789-bd"]/ul[1]/li[6]/a  Autos
  element should contain  //*[@id="default-p_30345789-bd"]/ul[1]/li[7]/a  Fantasy
  element should contain  //*[@id="default-p_30345789-bd"]/ul[1]/li[8]/a  Dating
  element should contain  //*[@id="default-p_30345789-bd"]/ul[1]/li[9]/a  Shopping
  element should contain  //*[@id="default-p_30345789-bd"]/ul[1]/li[10]/a  Makers
  element should contain  //*[@id="default-p_30345789-bd"]/ul[1]/li[11]/a  Parenting
  element should contain  //*[@id="default-p_30345789-bd"]/ul[1]/li[12]/a  Health
  element should contain  //*[@id="default-p_30345789-bd"]/ul[1]/li[13]/a  Style
  element should contain  //*[@id="default-p_30345789-bd"]/ul[1]/li[14]/a  Beauty
  element should contain  //*[@id="default-p_30345789-bd"]/ul[1]/li[15]/a  Politics
  element should contain  //*[@id="default-p_30345789-bd"]/ul[1]/li[16]/a  Movies
  element should contain  //*[@id="default-p_30345789-bd"]/ul[1]/li[17]/a  Travel
  element should contain  //*[@id="default-p_30345789-bd"]/ul[1]/li[18]/a  Tech
  element should contain  //*[@id="default-p_30345789-bd"]/ul[1]/li[19]/a  TV
  element should contain  //*[@id="default-p_30345789-bd"]/ul[1]/li[20]/a  Celebrity






*** Keywords ***
