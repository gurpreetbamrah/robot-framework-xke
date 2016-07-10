*** Settings ***
Documentation    Suite description
Library   DatabaseLibrary
Library   Collections


*** Keywords ***
Connect to DB
    [Documentation]     Keyword to connect to the database
    Connect To Database   dbapiModuleName=pymysql    dbName=employee    dbUsername=root   dbPassword=user   dbHost=localhost      dbPort=3307
Get Data from DB
    [Arguments]   ${ID}
    ${DatafromDB}=   Query   select * from Employee_details where Emp_ID='${ID}'
    ${DatafromDB1}=     convert to list   ${DatafromDB}
    ${DatafromDB2}=     get from list     ${DatafromDB1}    0
    ${IDDB}=            get from list     ${DatafromDB2}    0
    set test variable   ${IDDB}
    ${NameDB}=          get from list     ${DatafromDB2}    1
    set test variable   ${NameDB}
    ${AddressDB}=       get from list     ${DatafromDB2}    2
    set test variable   ${AddressDB}
    ${CityDB}=          get from list     ${DatafromDB2}    3
    set test variable   ${CityDB}

Verify the Data
    [Arguments]    ${NameUI}    ${AddressUI}     ${CityUI}
    should be equal    ${NameUI}    ${NameDB}
    should be equal    ${AddressUI}     ${AddressDB}
    should be equal    ${CityUI}    ${CityDB}
