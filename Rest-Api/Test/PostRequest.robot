*** Settings ***
Library    Collections
Library    RequestsLibrary
Resource     ../../Common/common.robot
Resource     ../../Rest-Api/Keywords/apikeywords.robot

*** Variables ***
${emailID}   gurpreetsingh@xebia.com
${activationsuccess}    1
${activationfail}       0
${RequestParam1}        email
${RequestParam2}        activate


*** Test Cases ***
Post Request Demo
    ${response}=  I send the Http Post Request    ${Postrequesturl}   ${RequestParam1}  ${emailID}   ${RequestParam2}    ${activationsuccess}
    I validate the Response code   ${response}   200
    and I validate the Post Request Response     ${response}     user activated successfully        ${emailID}
