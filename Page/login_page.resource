*** Settings ***
Library              SeleniumLibrary

*** Variables ***

*** Keywords ***

Input User 
    [Arguments]     ${username}              
    Input Text      xpath://form/input[1]     ${username}
    
Input Password
    [Arguments]     ${password}
    Input Text      xpath://form/input[2]     ${password}

Login Submit
    Click Button    xpath://button[2]