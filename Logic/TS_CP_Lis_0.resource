*** Settings ***
Library              SeleniumLibrary
Resource             ${CURDIR}/../Resource/dglforsme.resource

*** Variables ***

*** Keywords ***

CP Check Result 0
    [Arguments]            ${username}      ${password}       ${image_name}       ${condition_1}      ${condition_2}      ${condition_3}
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
    Click Tab cashPurchase
    Capture Screen
    Run Keyword If     '${condition_1}' == 'yes'        Click Cbx Paid   
    ...                ELSE                             Unclick Cbx Paid

    Run Keyword If     '${condition_2}' == 'yes'        Click Cbx outstanding   
    ...                ELSE                             Unclick Cbx outstanding

    Run Keyword If     '${condition_3}' == 'yes'        Click Cbx cancel   
    ...                ELSE                             Unclick Cbx cancel
    Capture Screen
    Click Btn Search
    ${column}=       Get Element Count        //*[contains(@id, 'sl-oe-detail')]
    Set Suite Variable      ${column}
    Log To Console       ${column}
    Run Keyword If       ${column} > 0        Fail
    Page Should Contain Element     //table-body/div/div/label                
    Capture Screen