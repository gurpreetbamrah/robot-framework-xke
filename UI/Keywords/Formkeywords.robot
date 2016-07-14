*** Settings ***
Library       Selenium2Library
Resource      ../../UI/Locaters/FormLocaters.robot

*** Keywords ***

Click on the practice form and then select form from the menu
   Click Element    ${HomePage_Menu_PracticeForm}
   Execute Javascript   (document.getElementById('${HomePage_Menu_Form}').click())
Verify the form Page Url
   location should contain      form.html
Enter the first and last Name
   [Arguments]     ${Firstname}     ${LastName}
   input text     ${HomePage_Menu_Form_FirstName}       ${Firstname}
   input text     ${HomePage_Menu_Form_LastName}        ${LastName}
Select the Gender
   [Arguments]     ${gender}
   select radio button       sex         ${gender}
Select the Country
   [Arguments]     ${country}
   select from list by index      ${HomePage_Menu_Form_Country}     ${country}
Select the Checkbox
   select checkbox         ${HomePage_Menu_Form_Checkbox}
Upload the Image
   choose file     ${HomePage_Menu_Form_Image}        C:\\Users\\gurpreetsingh\\PycharmProjects\\robot-framework-xke\\UI\\a.png
Click the Alert
   click element    ${HomePage_Menu_Form_Alert}
   sleep  5
   Alert Should Be Present    I am an alert box!
Click on the Submit Button
    click element   ${HomePage_Menu_Form_Submit}
Verify form submitted Successfully
    [Arguments]    ${message}
   wait until keyword succeeds   5times  2s    element should contain     ${HomePage_Menu_Form_Submit_Message}       ${message}
Fill Up the form
    Enter the first and last Name   Gurpreet    Singh
    Select the Gender   male
    Select the Country  2
    Select the Checkbox
    Upload the Image
    Click the Alert
    Click on the Submit Button



