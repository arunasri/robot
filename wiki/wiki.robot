*** Settings ***
Library  Selenium2Library
Suite Setup  open browser  ${BASE_URL}  ${BROWSER}
Suite Teardown  close all browsers

*** Variables ***
${BASE_URL}  https://en.wikipedia.org/wiki/Main_Page
${BROWSER}  chrome

*** Test Cases ***
opening browser
    wait until page contains  Wikipedia

verifying components in wiki
#commons
    page should contain image  //*[@id="mp-sister"]/table/tbody/tr[1]/td[1]/a/img
    element should contain  //*[@id="mp-sister"]/table/tbody/tr[1]/td[2]/b/a  Commons
    element should be visible  //*[@id="mp-sister"]/table/tbody/tr[1]/td[2]/b/a  Free media repository

#wikibooks
    page should contain image  //*[@id="mp-sister"]/table/tbody/tr[2]/td[1]/a/img
    element should contain  //*[@id="mp-sister"]/table/tbody/tr[2]/td[2]/b/a  Wikibooks
    element should be visible  //*[@id="mp-sister"]/table/tbody/tr[2]/td[2]/b/a  Free textbooks and mamuals

#wikiquote
    page should contain image  //*[@id="mp-sister"]/table/tbody/tr[3]/td[1]/a/img
    element should contain  //*[@id="mp-sister"]/table/tbody/tr[3]/td[2]/b/a  Wikiquote
    element should be visible  //*[@id="mp-sister"]/table/tbody/tr[3]/td[2]/b/a  Collection of quotations

#wikiversity
    page should contain image  //*[@id="mp-sister"]/table/tbody/tr[4]/td[1]/a/img
    element should contain  //*[@id="mp-sister"]/table/tbody/tr[4]/td[2]/b/a  Wikiversity
    element should be visible  //*[@id="mp-sister"]/table/tbody/tr[4]/td[2]/b/a  Free learning materials and activities

#mediawiki
    page should contain image  //*[@id="mp-sister"]/table/tbody/tr[1]/td[3]/a/img
    element should contain  //*[@id="mp-sister"]/table/tbody/tr[1]/td[4]/b/a  MediaWiki
    element should be visible  //*[@id="mp-sister"]/table/tbody/tr[1]/td[4]/b/a  Wiki software development

#wikidata
    page should contain image  //*[@id="mp-sister"]/table/tbody/tr[2]/td[3]/a/img
    element should contain  //*[@id="mp-sister"]/table/tbody/tr[2]/td[4]/b/a  Wikidata
    element should be visible  //*[@id="mp-sister"]/table/tbody/tr[2]/td[4]/b/a  Free knowledge base

#wikisource
    page should contain image  //*[@id="mp-sister"]/table/tbody/tr[3]/td[3]/a/img
    element should contain  //*[@id="mp-sister"]/table/tbody/tr[3]/td[4]/b/a  Wikisource
    element should be visible  //*[@id="mp-sister"]/table/tbody/tr[3]/td[4]/b/a  Free-content library

#wikivoyage
    page should contain image  //*[@id="mp-sister"]/table/tbody/tr[4]/td[3]/a/img
    element should contain  //*[@id="mp-sister"]/table/tbody/tr[4]/td[4]/b/a  Wikivoyage
    element should be visible  //*[@id="mp-sister"]/table/tbody/tr[4]/td[4]/b/a  Free travel guide

#meta-wiki
    page should contain image  //*[@id="mp-sister"]/table/tbody/tr[1]/td[5]/a/img
    element should contain  //*[@id="mp-sister"]/table/tbody/tr[1]/td[6]/b/a  Meta-Wiki
    element should be visible  //*[@id="mp-sister"]/table/tbody/tr[1]/td[6]/b/a  Wikimedia project coordination

#wikinews
    page should contain image  //*[@id="mp-sister"]/table/tbody/tr[2]/td[5]/a/img
    element should contain  //*[@id="mp-sister"]/table/tbody/tr[2]/td[6]/b/a  Wikinews
    element should be visible  //*[@id="mp-sister"]/table/tbody/tr[2]/td[6]/b/a  Free-content news

#wikispecies
    page should contain image  //*[@id="mp-sister"]/table/tbody/tr[3]/td[5]/a/img
    element should contain  //*[@id="mp-sister"]/table/tbody/tr[3]/td[6]/b/a  Wikispecies
    element should be visible  //*[@id="mp-sister"]/table/tbody/tr[3]/td[6]/b/a  Directory of species

#wiktionary
    page should contain image  //*[@id="mp-sister"]/table/tbody/tr[4]/td[5]/a/img
    element should contain  //*[@id="mp-sister"]/table/tbody/tr[4]/td[6]/b/a  Wiktionary
    element should be visible  //*[@id="mp-sister"]/table/tbody/tr[4]/td[6]/b/a  Dictionary and thesaurus

*** Keywords ***













