*** Settings ***
Documentation    Suite description

*** Variables ***
${HomePage_Menu_PracticeForm}                  id=prac-form
${HomePage_Menu_Form}                          testform
${HomePage_Menu_Form_FirstName}                id=namefirst
${HomePage_Menu_Form_LastName}                 name=lastname
${HomePage_Menu_Form_Country}                  name=Country
${HomePage_Menu_Form_Checkbox}                 name=vehicle1
${HomePage_Menu_Form_DOB}                      name=bday
${HomePage_Menu_Form_Image}                    id=pic
${HomePage_Menu_Form_Alert}                    xpath=//button[text()='I am Alert']
${HomePage_Menu_Form_DragImage_Source}         id=drag1
${HomePage_Menu_Form_DragImage_Destination}    id=div1
${HomePage_Menu_Form_Submit}                    //input[@type='submit']
${HomePage_Menu_Form_Submit_Message}            id=demo


