*** Settings ***
Library              SeleniumLibrary
Resource             ${CURDIR}/../Resource/dglforsme.resource

*** Variables ***

*** Keywords ***

Oe Check Search 0
    [Arguments]            ${username}    ${password}       ${image_name}       ${data}
    Set Selenium Speed     0.5
    Set Directory          ${image_name}
    Capture Screen
    Input User             ${username}    
    Input Password         ${password}
    Capture Screen
    Login Submit                 
    Wait Until Element Is Visible           ${logic}
    Capture Screen
    Click Tab Buy
    Capture Screen
    Click Tab OtherExpense
    Capture Screen
    Click Btn Search
    ${column}=       Get Element Count        //*[contains(@id, 'sl-oe-detail')]
    Set Suite Variable      ${column}
    Log To Console       ${column}
    Input Data Search    ${data}
    Log To Console       ${data}
    Click Btn Search
    ${column}=       Get Element Count        //*[contains(@id, 'sl-oe-detail')]
    Set Suite Variable      ${column}
    Log To Console       ${column}
    Run Keyword If       ${column} > 0        Fail
    Page Should Contain Element     //table-body/div/div/label
    Capture Screen