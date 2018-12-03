*** Settings ***
Library              SeleniumLibrary
Resource             /Users/USER1/.jenkins/workspace/DGL/Resource/dglforsme.resource

*** Variables ***

*** Keywords ***

Oe Add Data 1
    [Arguments]            ${username}      ${password}       ${image_name}     ${supplier_code}
    Set Suite Variable       ${logic}       Dharmniti Genaral Ledger
    Set Selenium Speed     0.3
    Set Directory          ${image_name}
    Capture Screen
    Input User             ${username}    
    Input Password         ${password}
    Capture Screen
    Login Submit                 
    Wait Until Page Contains        ${logic}   
    Capture Screen
    Click Tab Buy
    Capture Screen
    Click Tab OtherExpense
    Click Btn Add
    Capture Screen
    Input Supplier Code     ${supplier_code}
    Capture Screen          
    Click Btn Submit        
    Capture Screen

    
