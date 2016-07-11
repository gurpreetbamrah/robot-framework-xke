*** Settings ***
Documentation    This is basic form test
Library          Selenium2Library
Test Setup       Setup Website Url
Test Teardown    Teardown Website Url
Resource       ../../UI/Keywords/Formkeywords.robot
Resource       ../../Common/common.robot


*** Test Cases ***
websiteform2
    Click on the practice form and then select form from the menu
    Verify the form Page Url
    Fill Up the form
    Verify form submitted Successfully    Gurpreet Singh Thank You for Your Submission







