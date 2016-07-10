*** Settings ***
Documentation    Suite description
Library          RequestsLibrary
Library          Collections



*** Keywords ***
I send the Http Get Request
  [Arguments]   ${URL}
    Create Session	   testurl	    ${URL}
    ${response}=	  Get Request	    testurl      /
    [Return]   ${response}
I validate the Response code
   [Arguments]   ${response}     ${response_code}
   Should Be Equal As Strings  ${response.status_code}   ${response_code}
I send HTTP Request with the Parameter
   [Arguments]   ${param}   ${value}
   ${response} =    Get Request    testurl   ?${param}=${value}
   [Return]   ${response}
I validate the Get Request Response
   [Arguments]    ${response}  ${Responsecontent}   ${contentvalue}      ${Responseid}    ${idvalue}
   ${json} =  Set Variable  ${response.json()}
   ${contentvaluefromresponse} =  Get From Dictionary  ${json}  ${Responsecontent}
   Should Be Equal  ${contentvaluefromresponse}  ${contentvalue}
   ${idvaluefromresponse} =  Get From Dictionary  ${json}  ${Responseid}
   Should Be Equal As Strings   ${idvaluefromresponse}   ${idvalue}
I send the Http Post Request
  [Arguments]   ${Postrequesturl}   ${RequestParam1}  ${emailID}   ${RequestParam2}    ${activatevalue}
    Create Session	   testurl2	    ${Postrequesturl}
    ${response}=	  Post Request	    testurl2      ?${RequestParam1}=${emailID}&${RequestParam2}=${activatevalue}
    [Return]   ${response}
I validate the Post Request Response
   [Arguments]    ${response}     ${status}     ${email}
   ${json} =  Set Variable  ${response.json()}
   ${statusfromresponse} =  Get From Dictionary  ${json}  status
   Should Be Equal  ${statusfromresponse}  ${status}
   ${emailfromresponse} =  Get From Dictionary  ${json}  email
   Should Be Equal     ${emailfromresponse}   ${email}
