*** Settings ***
Documentation    Suite description
Resource         ../../Common/databasekeywords.robot

*** Variables ***

${ID}=  381
${NameUI}=  Gurpreet Singh
${AddressUI}=  Sector-22
${CityUI}=  Gurgaon

*** Test Cases ***
Robot Framework DB Demo
    Connect to DB
    Get Data from DB   ${ID}
    Verify the Data    ${NameUI}      ${AddressUI}   ${CityUI}
    Disconnect from database