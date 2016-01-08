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
    element should be visible  //*[@id="user_name"]  prabhakar+superadmin
    element should contain  //*[@id="edit_user_546"]/div[1]/div[2]/label  Email
    element should be visible  //*[@id="user_email"]  prabhakar+superadmin@bigbinary.com
    element should contain  //*[@id="edit_user_546"]/div[1]/div[3]/label  Country
    element should be visible  //*[@id="user_address_attributes_country"]  India
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
    element should be visible  //*[@id="user_mobile_phone"]  (967) 607-6226
    element should contain  //*[@id="edit_user_546"]/div[1]/div[10]/label  Primary Language
    element should be visible  //*[@id="user_primary_language_id"]  English
    element should contain  //*[@id="edit_user_546"]/div[1]/div[11]/label  Secondary Language
    element should be visible  //*[@id="user_secondary_language_id"]  Spanish
    element should contain  //*[@id="edit_user_546"]/div[1]/div[12]/label  Timezone
    element should be visible  //*[@id="user_timezone"]  (GMT+05:30) Chennai
    element should be visible  //*[@id="edit_user_546"]/div[4]/button/span  Save
#verifying Image
    element should be visible  //*[@id="edit_user_546"]/div[2]/div/img
    element should contain  //*[@id="edit_user_546"]/div[2]/div/a/span  Change image
#verifying footer area
    element should contain  //*[@id="footer"]/div/a[1]  Privacy Policy
    element should contain  //*[@id="footer"]/div/a[2]  Terms of Service

*** Keywords ***
