*** Settings ***
Documentation    Suite description
Library          Selenium2Library
Library          OperatingSystem


*** Keywords ***

Setup Website Url
   open browser       ${websiteurl}       chrome
    Set Environment Variable  webdriver.chrome.driver  ${BIN_DIR}/chromedriver.exe
     maximize browser window
Teardown Website Url
   close browser


*** Variables ***
${websiteurl}       http://gsbamrah.github.io
${Getrequesturl}    http://localhost:8080/robot
${Postrequesturl}   http://localhost:8080/user
${BIN_DIR}

