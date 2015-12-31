*** Settings ***
Library  Selenium2Library
Suite Setup  open browser  ${BASE_URL}  ${BROWSER}
Suite Teardown  close all browsers

*** Variables ***
${BASE_URL}  https://news.ycombinator.com/
${BROWSER}  chrome

*** Test Cases ***
opening Browser
    wait until page contains  Hacker News
#verifying comments count
    get count  //*[@id="hnmain"]/tbody/tr[3]/td/table/tbody/tr[2]/td[2]/a[2]  16 comments
    get count  //*[@id="hnmain"]/tbody/tr[3]/td/table/tbody/tr[5]/td[2]/a[2]  38 comments
    get count  //*[@id="hnmain"]/tbody/tr[3]/td/table/tbody/tr[8]/td[2]/a[2]  118 comments
    get count  //*[@id="hnmain"]/tbody/tr[3]/td/table/tbody/tr[14]/td[2]/a[2]  2 comments
    get count  //*[@id="hnmain"]/tbody/tr[3]/td/table/tbody/tr[17]/td[2]/a[2]  35 comments
    get count  //*[@id="hnmain"]/tbody/tr[3]/td/table/tbody/tr[20]/td[2]/a[2]  41 comments
    get count  //*[@id="hnmain"]/tbody/tr[3]/td/table/tbody/tr[23]/td[2]/a[2]  5 comments
    get count  //*[@id="hnmain"]/tbody/tr[3]/td/table/tbody/tr[26]/td[2]/a[2]  14 comments
    get count  //*[@id="hnmain"]/tbody/tr[3]/td/table/tbody/tr[32]/td[2]/a[2]  28 comments
    get count  //*[@id="hnmain"]/tbody/tr[3]/td/table/tbody/tr[35]/td[2]/a[2]  1 comment
    get count  //*[@id="hnmain"]/tbody/tr[3]/td/table/tbody/tr[41]/td[2]/a[2]  8 comments
    get count  //*[@id="hnmain"]/tbody/tr[3]/td/table/tbody/tr[44]/td[2]/a[2]  113 comments
    get count  //*[@id="hnmain"]/tbody/tr[3]/td/table/tbody/tr[47]/td[2]/a[2]  5 comments
    get count  //*[@id="hnmain"]/tbody/tr[3]/td/table/tbody/tr[50]/td[2]/a[2]  23 comments
    get count  //*[@id="hnmain"]/tbody/tr[3]/td/table/tbody/tr[53]/td[2]/a[2]  44 comments
    get count  //*[@id="hnmain"]/tbody/tr[3]/td/table/tbody/tr[56]/td[2]/a[2]  15 comments
    get count  //*[@id="hnmain"]/tbody/tr[3]/td/table/tbody/tr[59]/td[2]/a[2]  2 comments
    get count  //*[@id="hnmain"]/tbody/tr[3]/td/table/tbody/tr[62]/td[2]/a[2]  6 comments
    get count  //*[@id="hnmain"]/tbody/tr[3]/td/table/tbody/tr[71]/td[2]/a[2]  2 comments
    get count  //*[@id="hnmain"]/tbody/tr[3]/td/table/tbody/tr[74]/td[2]/a[2]  4 comments
    get count  //*[@id="hnmain"]/tbody/tr[3]/td/table/tbody/tr[80]/td[2]/a[2]  14 comments
    get count  //*[@id="hnmain"]/tbody/tr[3]/td/table/tbody/tr[89]/td[2]/a[2]  17 comments

*** Keywords ***
