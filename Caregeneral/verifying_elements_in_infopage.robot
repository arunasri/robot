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
    textfield value should be  //*[@id="user_name"]  prabhakar+superadmin
    element should contain  //*[@id="edit_user_546"]/div[1]/div[2]/label  Email
    textfield value should be  //*[@id="user_email"]  prabhakar+superadmin@bigbinary.com
    element should contain  //*[@id="edit_user_546"]/div[1]/div[3]/label  Country
    list selection should be  //*[@id="user_address_attributes_country"]  India
    element text should be  //*[@id="user_address_attributes_country"]  United States\nCanada\n--------------------\nAfghanistan\nAlbania\nAlgeria\nAmerican Samoa\nAndorra\nAngola\nAnguilla\nAntarctica\nAntigua and Barbuda\nArgentina\nArmenia\nAruba\nAustralia\nAustria\nAzerbaijan\nBahamas\nBahrain\nBangladesh\nBarbados\nBelarus\nBelgium\nBelize\nBenin\nBermuda\nBhutan\nBolivia, Plurinational State of\nBonaire, Sint Eustatius and Saba\nBosnia and Herzegovina\nBotswana\nBouvet Island\nBrazil\nBritish Indian Ocean Territory\nBrunei Darussalam\nBulgaria\nBurkina Faso\nBurundi\nCambodia\nCameroon\nCanada\nCape Verde\nCayman Islands\nCentral African Republic\nChad\nChile\nChina\nChristmas Island\nCocos (Keeling) Islands\nColombia\nComoros\nCongo\nCongo, The Democratic Republic of the\nCook Islands\nCosta Rica\nCroatia\nCuba\nCuraçao\nCyprus\nCzech Republic\nCôte d'Ivoire\nDenmark\nDjibouti\nDominica\nDominican Republic\nEcuador\nEgypt\nEl Salvador\nEquatorial Guinea\nEritrea\nEstonia\nEthiopia\nFalkland Islands (Malvinas)\nFaroe Islands\nFiji\nFinland\nFrance\nFrench Guiana\nFrench Polynesia\nFrench Southern Territories\nGabon\nGambia\nGeorgia\nGermany\nGhana\nGibraltar\nGreece\nGreenland\nGrenada\nGuadeloupe\nGuam\nGuatemala\nGuernsey\nGuinea\nGuinea-Bissau\nGuyana\nHaiti\nHeard Island and McDonald Islands\nHoly See (Vatican City State)\nHonduras\nHong Kong\nHungary\nIceland\nIndia\nIndonesia\nIran, Islamic Republic of\nIraq\nIreland\nIsle of Man\nIsrael\nItaly\nJamaica\nJapan\nJersey\nJordan\nKazakhstan\nKenya\nKiribati\nKorea, Democratic People's Republic of\nKorea, Republic of\nKuwait\nKyrgyzstan\nLao People's Democratic Republic\nLatvia\nLebanon\nLesotho\nLiberia\nLibya\nLiechtenstein\nLithuania\nLuxembourg\nMacao\nMacedonia, Republic of\nMadagascar\nMalawi\nMalaysia\nMaldives\nMali\nMalta\nMarshall Islands\nMartinique\nMauritania\nMauritius\nMayotte\nMexico\nMicronesia, Federated States of\nMoldova, Republic of\nMonaco\nMongolia\nMontenegro\nMontserrat\nMorocco\nMozambique\nMyanmar\nNamibia\nNauru\nNepal\nNetherlands\nNew Caledonia\nNew Zealand\nNicaragua\nNiger\nNigeria\nNiue\nNorfolk Island\nNorthern Mariana Islands\nNorway\nOman\nPakistan\nPalau\nPalestinian Territory, Occupied\nPanama\nPapua New Guinea\nParaguay\nPeru\nPhilippines\nPitcairn\nPoland\nPortugal\nPuerto Rico\nQatar\nRomania\nRussian Federation\nRwanda\nRéunion\nSaint Barthélemy\nSaint Helena, Ascension and Tristan da Cunha\nSaint Kitts and Nevis\nSaint Lucia\nSaint Martin (French part)\nSaint Pierre and Miquelon\nSaint Vincent and the Grenadines\nSamoa\nSan Marino\nSao Tome and Principe\nSaudi Arabia\nSenegal\nSerbia\nSeychelles\nSierra Leone\nSingapore\nSint Maarten (Dutch part)\nSlovakia\nSlovenia\nSolomon Islands\nSomalia\nSouth Africa\nSouth Georgia and the South Sandwich Islands\nSouth Sudan\nSpain\nSri Lanka\nSudan\nSuriname\nSvalbard and Jan Mayen\nSwaziland\nSweden\nSwitzerland\nSyrian Arab Republic\nTaiwan, Province of China\nTajikistan\nTanzania, United Republic of\nThailand\nTimor-Leste\nTogo\nTokelau\nTonga\nTrinidad and Tobago\nTunisia\nTurkey\nTurkmenistan\nTurks and Caicos Islands\nTuvalu\nUganda\nUkraine\nUnited Arab Emirates\nUnited Kingdom\nUnited States\nUnited States Minor Outlying Islands\nUruguay\nUzbekistan\nVanuatu\nVenezuela, Bolivarian Republic of\nViet Nam\nVirgin Islands, British\nVirgin Islands, U.S.\nWallis and Futuna\nWestern Sahara\nYemen\nZambia\nZimbabwe\nÅland Islands
    element should contain  //*[@id="edit_user_546"]/div[1]/div[4]/label  Street Address
    element should be visible   //*[@id="user_address_attributes_address1"]
    element should contain  //*[@id="edit_user_546"]/div[1]/div[5]/label  State/Province/Region
    element should be visible  //*[@id="user_address_attributes_state"]
    element text should be  //*[@id="user_address_attributes_state"]  Andaman and Nicobar Islands\nAndhra Pradesh\nArunāchal Pradesh\nAssam\nBihār\nChandīgarh\nChhattīsgarh\nDamān and Diu\nDelhi\nDādra and Nagar Haveli\nGoa\nGujarāt\nHimāchal Pradesh\nHaryāna\nJharkhand\nJammu and Kashmīr\nKarnātaka\nKerala\nLakshadweep\nMahārāshtra\nMeghālaya\nManipur\nMadhya Pradesh\nMizoram\nNāgāland\nOrissa\nPunjab\nPondicherry\nRājasthān\nSikkim\nTamil Nādu\nTripura\nUttaranchal\nUttar Pradesh\nWest Bengal
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
    list selection should be  //*[@id="user_primary_language_id"]  English
    element text should be  //*[@id="user_primary_language_id"]  English\nSpanish\nFrench\nItalian\nChinese\nKorean\nRussian\nCreole\nPortuguese\nGerman\nVietnamese\nTagalog
    element should contain  //*[@id="edit_user_546"]/div[1]/div[11]/label  Secondary Language
    list selection should be  //*[@id="user_secondary_language_id"]  Spanish
    element text should be  //*[@id="user_secondary_language_id"]  English\nSpanish\nFrench\nItalian\nChinese\nKorean\nRussian\nCreole\nPortuguese\nGerman\nVietnamese\nTagalog
    element should contain  //*[@id="edit_user_546"]/div[1]/div[12]/label  Timezone
    list selection should be  //*[@id="user_timezone"]  (GMT+05:30) Chennai
    element text should be  //*[@id="user_timezone"]  (GMT-10:00) Hawaii\n(GMT-09:00) Alaska\n(GMT-08:00) Pacific Time (US & Canada)\n(GMT-07:00) Arizona\n(GMT-07:00) Mountain Time (US & Canada)\n(GMT-06:00) Central Time (US & Canada)\n(GMT-05:00) Eastern Time (US & Canada)\n(GMT-05:00) Indiana (East)\n-------------\n(GMT-11:00) American Samoa\n(GMT-11:00) International Date Line West\n(GMT-11:00) Midway Island\n(GMT-11:00) Samoa\n(GMT-08:00) Tijuana\n(GMT-07:00) Chihuahua\n(GMT-07:00) Mazatlan\n(GMT-06:00) Central America\n(GMT-06:00) Guadalajara\n(GMT-06:00) Mexico City\n(GMT-06:00) Monterrey\n(GMT-06:00) Saskatchewan\n(GMT-05:00) Bogota\n(GMT-05:00) Lima\n(GMT-05:00) Quito\n(GMT-04:30) Caracas\n(GMT-04:00) Atlantic Time (Canada)\n(GMT-04:00) Georgetown\n(GMT-04:00) La Paz\n(GMT-04:00) Santiago\n(GMT-03:30) Montevideo\n(GMT-03:30) Newfoundland\n(GMT-03:00) Brasilia\n(GMT-03:00) Buenos Aires\n(GMT-03:00) Greenland\n(GMT-02:00) Mid-Atlantic\n(GMT-01:00) Azores\n(GMT-01:00) Cape Verde Is.\n(GMT+00:00) Casablanca\n(GMT+00:00) Dublin\n(GMT+00:00) Edinburgh\n(GMT+00:00) Lisbon\n(GMT+00:00) London\n(GMT+00:00) Monrovia\n(GMT+00:00) UTC\n(GMT+01:00) Amsterdam\n(GMT+01:00) Belgrade\n(GMT+01:00) Berlin\n(GMT+01:00) Bern\n(GMT+01:00) Bratislava\n(GMT+01:00) Brussels\n(GMT+01:00) Budapest\n(GMT+01:00) Copenhagen\n(GMT+01:00) Ljubljana\n(GMT+01:00) Madrid\n(GMT+01:00) Paris\n(GMT+01:00) Prague\n(GMT+01:00) Rome\n(GMT+01:00) Sarajevo\n(GMT+01:00) Skopje\n(GMT+01:00) Stockholm\n(GMT+01:00) Vienna\n(GMT+01:00) Warsaw\n(GMT+01:00) West Central Africa\n(GMT+01:00) Zagreb\n(GMT+02:00) Athens\n(GMT+02:00) Bucharest\n(GMT+02:00) Cairo\n(GMT+02:00) Harare\n(GMT+02:00) Helsinki\n(GMT+02:00) Istanbul\n(GMT+02:00) Jerusalem\n(GMT+02:00) Kyiv\n(GMT+02:00) Pretoria\n(GMT+02:00) Riga\n(GMT+02:00) Sofia\n(GMT+02:00) Tallinn\n(GMT+02:00) Vilnius\n(GMT+03:00) Baghdad\n(GMT+03:00) Kaliningrad\n(GMT+03:00) Kuwait\n(GMT+03:00) Minsk\n(GMT+03:00) Nairobi\n(GMT+03:00) Riyadh\n(GMT+03:30) Tehran\n(GMT+04:00) Abu Dhabi\n(GMT+04:00) Baku\n(GMT+04:00) Moscow\n(GMT+04:00) Muscat\n(GMT+04:00) Samara\n(GMT+04:00) St. Petersburg\n(GMT+04:00) Tbilisi\n(GMT+04:00) Volgograd\n(GMT+04:00) Yerevan\n(GMT+04:30) Kabul\n(GMT+05:00) Islamabad\n(GMT+05:00) Karachi\n(GMT+05:00) Tashkent\n(GMT+05:30) Chennai\n(GMT+05:30) Kolkata\n(GMT+05:30) Mumbai\n(GMT+05:30) New Delhi\n(GMT+05:30) Sri Jayawardenepura\n(GMT+05:45) Kathmandu\n(GMT+06:00) Almaty\n(GMT+06:00) Astana\n(GMT+06:00) Dhaka\n(GMT+06:00) Ekaterinburg\n(GMT+06:30) Rangoon\n(GMT+07:00) Bangkok\n(GMT+07:00) Hanoi\n(GMT+07:00) Jakarta\n(GMT+07:00) Novosibirsk\n(GMT+08:00) Beijing\n(GMT+08:00) Chongqing\n(GMT+08:00) Hong Kong\n(GMT+08:00) Krasnoyarsk\n(GMT+08:00) Kuala Lumpur\n(GMT+08:00) Perth\n(GMT+08:00) Singapore\n(GMT+08:00) Taipei\n(GMT+08:00) Ulaanbaatar\n(GMT+08:00) Urumqi\n(GMT+09:00) Irkutsk\n(GMT+09:00) Osaka\n(GMT+09:00) Sapporo\n(GMT+09:00) Seoul\n(GMT+09:00) Tokyo\n(GMT+09:30) Adelaide\n(GMT+09:30) Darwin\n(GMT+10:00) Brisbane\n(GMT+10:00) Canberra\n(GMT+10:00) Guam\n(GMT+10:00) Hobart\n(GMT+10:00) Melbourne\n(GMT+10:00) Port Moresby\n(GMT+10:00) Sydney\n(GMT+10:00) Yakutsk\n(GMT+11:00) New Caledonia\n(GMT+11:00) Solomon Is.\n(GMT+11:00) Vladivostok\n(GMT+12:00) Auckland\n(GMT+12:00) Fiji\n(GMT+12:00) Kamchatka\n(GMT+12:00) Magadan\n(GMT+12:00) Marshall Is.\n(GMT+12:00) Wellington\n(GMT+12:45) Chatham Is.\n(GMT+13:00) Nuku'alofa\n(GMT+13:00) Tokelau Is.

#verifying Image
    element should be visible  //*[@id="edit_user_546"]/div[2]/div/img
    element should contain  //*[@id="edit_user_546"]/div[2]/div/a/span  Change image

#verifying footer area
    element should contain  //*[@id="footer"]/div/a[1]  Privacy Policy
    element should contain  //*[@id="footer"]/div/a[2]  Terms of Service
    element should contain  //*[@id="edit_user_546"]/div[4]/button/span  SAVE


*** Keywords ***





