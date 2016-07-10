*** Settings ***
Documentation    Suite description
Library   Selenium2Library


*** Keywords ***

Setup Website Url
   open browser       ${websiteurl}       chrome
   maximize browser window
Teardown Website Url
   close browser


*** Variables ***
${websiteurl}       http://gsbamrah.github.io
${Getrequesturl}    http://localhost:8080/robot
${Postrequesturl}   http://localhost:8080/user

