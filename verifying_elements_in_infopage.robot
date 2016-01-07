*** Settings ***
Library  Selenium2Library
Suite Setup  open browser  ${BASE_URL}  ${BROWSER}
Suite Teardown  close all browsers

*** Variables ***
${BASE_URL}  http://www.caregeneral.net/login
${BROWSER}  chrome
*** Test Cases ***
Opening browser
    wait until page contains  CareGeneral
    input text  //*[@id="user_email"]  prabhakar+superadmin@bigbinary.com
    input password  //*[@id="user_password"]  welcome
    click button   Login
    wait until page contains  Suzan
    mouse over  //*[@id="user_menu_profile"]/li/span/span
    click link  My Info
    wait until page contains  My Info
#verifying task tabs
    element should contain  //*[@id="content"]/ul/li[1]/a  Profile
    element should contain  //*[@id="content"]/ul/li[2]/a  Change Password
    element should contain  //*[@id="content"]/ul/li[3]/a  Notifications
    element should contain  //*[@id="content"]/ul/li[4]/a  Languages
#verifying Header
    element should be visible  //*[@id="content"]/section/div[1]/h2  profile
#verifying profile elements
    element should contain  //*[@id="edit_user_546"]/div[1]/div[1]/label  Name
    element should be visible  //*[@id="user_name"]
    element should contain  //*[@id="edit_user_546"]/div[1]/div[2]/label  Email
    element should be visible  //*[@id="user_email"]
    element should contain  //*[@id="edit_user_546"]/div[1]/div[3]/label  Country
    element should be visible  //*[@id="user_address_attributes_country"]
    element should contain  //*[@id="edit_user_546"]/div[1]/div[4]/label  Street Address
    element should be visible   //*[@id="user_address_attributes_address1"]
    element should contain  //*[@id="edit_user_546"]/div[1]/div[5]/label  State/Province/Region
    element should be visible  //*[@id="user_address_attributes_state"]
    element should contain   //*[@id="edit_user_546"]/div[1]/div[6]/label[1]  City
    element should be visible  //*[@id="user_address_attributes_city"]
    element should contain  //*[@id="edit_user_546"]/div[1]/div[6]/label[2]  Zip/Postal Code
    element should be visible  //*[@id="user_address_attributes_zip"]
    element should contain  //*[@id="edit_user_546"]/div[1]/div[7]/label  Home phone
    element should be visible  //*[@id="user_home_phone"]
    element should contain  //*[@id="edit_user_546"]/div[1]/div[8]/label  Office phone
    element should be visible  //*[@id="user_office_phone"]
    element should contain  //*[@id="edit_user_546"]/div[1]/div[9]/label  Mobile phone
    element should be visible  //*[@id="user_mobile_phone"]
    element should contain  //*[@id="edit_user_546"]/div[1]/div[10]/label  Primary Language
    element should be visible  //*[@id="user_primary_language_id"]
    element should contain  //*[@id="edit_user_546"]/div[1]/div[11]/label  Secondary Language
    element should be visible  //*[@id="user_secondary_language_id"]
    element should contain  //*[@id="edit_user_546"]/div[1]/div[12]/label  Timezone
    element should be visible  //*[@id="user_timezone"]
    element should be visible  //*[@id="edit_user_546"]/div[4]/button/span


*** Keywords ***
