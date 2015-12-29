*** Settings ***
Library  Selenium2Library
Suite Setup  open browser  ${BASE_URL}  ${BROWSER}
Suite Teardown  close all browsers

*** Keywords ***
*** Variables ***
${BASE_URL}  https://news.ycombinator.com/
${BROWSER}  chrome


*** Test Cases ***
opening browser
    wait until page contains  Hacker News

verifying links in ycombinator browser
    element should be visible  //*[@id="hnmain"]/tbody/tr[1]/td/table/tbody/tr/td[2]/span/b/a  news
    element should be visible  //*[@id="hnmain"]/tbody/tr[1]/td/table/tbody/tr/td[2]/span/a[2]  comments
    element should be visible  //*[@id="hnmain"]/tbody/tr[1]/td/table/tbody/tr/td[2]/span/a[3]  show
    element should be visible  //*[@id="hnmain"]/tbody/tr[1]/td/table/tbody/tr/td[2]/span/a[4]  ask
    element should be visible  //*[@id="hnmain"]/tbody/tr[1]/td/table/tbody/tr/td[2]/span/a[5]  jobs
    element should be visible  //*[@id="hnmain"]/tbody/tr[1]/td/table/tbody/tr/td[2]/span/a[6]  submit
    element should be visible  //*[@id="hnmain"]/tbody/tr[1]/td/table/tbody/tr/td[3]/span/a  login


