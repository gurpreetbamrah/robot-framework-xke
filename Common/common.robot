*** Settings ***
Documentation    Suite description
Library          Selenium2Library
Library          OperatingSystem


*** Keywords ***

Setup Website Url
  #Set Environment Variable  webdriver.chrome.driver  C:\\Program Files (x86)\\Jenkins\\tools\\chromedriver\\chromedriver.exe
   open browser       ${websiteurl}       firefox
   maximize browser window
Teardown Website Url
   close browser


*** Variables ***
${websiteurl}       http://gsbamrah.github.io
${Getrequesturl}    http://localhost:8080/robot
${Postrequesturl}   http://localhost:8080/user
${BIN_DIR}

