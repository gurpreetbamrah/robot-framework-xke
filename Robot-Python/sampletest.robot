*** Settings ***
Documentation    Suite description
Library        sample.py

*** Test Cases ***
Python with Robot
   Call Python Function

*** Keywords ***
Call Python Function
   ${response}=      Display  hello
   log   ${response}