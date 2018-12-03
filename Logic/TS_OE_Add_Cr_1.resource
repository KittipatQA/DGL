*** Settings ***
Library              SeleniumLibrary
Resource             /Users/USER1/.jenkins/workspace/DGL/Resource/dglforsme.resource

*** Variables ***

*** Keywords ***

Oe Add Data 1
    [Arguments]            ${username}      ${password}       ${image_name}
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
    #Select Vat Type     ${data_list}
    #Input transactionDate       ${transaction_date}
    #Input datePickerDueDate     ${datePickerDueDate}
    #Input Department        ${input-oe-detail-detail_department}
    #Input billNo            ${detail_billNo}
    #Input billDate          ${detail_billDate}
    #Input vatPeriod         ${detail_vatPeriod}
    #Input description       ${detail_description}
    #Input bindingexpenseInfo        ${no_bindingexpenseInfo}
    #Input number        ${qty}
    #Iuput Remark        ${remark}
    #Iuput paymentCash       ${paymentCashAmount}
    Capture Screen          
    Click Btn Submit        
    Capture Screen

    
