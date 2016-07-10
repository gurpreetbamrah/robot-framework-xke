*** Settings ***
Library    Collections
Library    RequestsLibrary
Resource     ../../Common/common.robot
Resource     ../../Rest-Api/Keywords/apikeywords.robot

*** Variables ***
${Param1}             name
${Responsecontent}    content
${Responseid}         id


*** Test Cases ***
Get Request Demo
    ${response}=  I send the Http Get Request    ${getrequesturl}
    and I validate the Response code   ${response}  200
    ${response}=  I send HTTP Request with the Parameter   ${Param1}  Gurpreet
    I validate the Response code   ${response}   200
    and I validate the Get Request Response  ${response}  ${Responsecontent}   Hello, Gurpreet!      ${Responseid}    1

