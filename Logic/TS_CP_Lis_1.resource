*** Settings ***
Library              SeleniumLibrary
Resource             ${CURDIR}/../Resource/dglforsme.resource

*** Variables ***

*** Keywords ***

CP Check Result 0
    [Arguments]            ${username}    ${password}       ${image_name}       ${condition_1}      ${condition_2}      ${condition_3}      ${result_status}
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
    Set Suite Variable      @{status_line}      ${result_status}
    Set Suite Variable       ${status_true}   สถานะถูกต้อง
    Set Suite Variable       ${status_false}  สถานะไม่ถูกต้อง
    Set Suite Variable       ${status_value}  ไม่พบรายการ
    ${column}=       Get Element Count        (//div[@class="ng-star-inserted"])
    Log To Console      ${column}      
    Set Suite Variable       ${column}
    Run Keyword If       ${column}>0        Log To Console      มีรายการ       ELSE        fail  ${column} : ${status_value}
    :FOR    ${index}    IN RANGE     0     ${column}    
    \   ${status_now}=   Get Text     //*[@id="sl-cp-detail-${index}"]/div[6]
    \   Run Keyword If     $status_now in $status_line      Log To Console      ${status_now} : ${status_true}      ELSE      fail  ${status_now} : ${status_false}
    Capture Screen