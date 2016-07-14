*** Settings ***
Documentation    This is basic form test
Library          Selenium2Library
Test Setup       Setup Website Url
Test Teardown    Teardown Website Url
Resource       ../../UI/Keywords/Formkeywords.robot
Resource       ../../Common/common.robot


*** Test Cases ***
websiteform
    Click on the practice form and then select form from the menu
    Verify the form Page Url
    Enter the first and last Name     Gurpreet  Singh
    Select the Gender   male
    Select the Country   2
    Select the Checkbox
    Upload the Image
    Click the Alert
    Click on the Submit Button
    Verify form submitted Successfully     Gurpreet Singh Thank You for Your Submission





