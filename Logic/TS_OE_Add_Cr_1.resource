*** Settings ***
Library              SeleniumLibrary
Resource             /Users/USER1/.jenkins/workspace/DGL/Resource/dglforsme.resource

*** Variables ***

*** Keywords ***

Oe Add Data 1
      [Arguments]            ${username}      ${password}       ${image_name}     ${supplier_code}    ${data_list}    ${transaction_date}     ${datePickerDueDate}        ${detail_department}        ${detail_billNo}        ${detail_billDate}      ${detail_vatPeriod}     ${detail_description}      ${no_bindingexpenseInfo}      ${qty}      ${price}    ${discount}    ${taxAmountlist}     ${remark}      ${paymentCashAmount}        
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
      ${columnbefore}=       Get Element Count        //*[contains(@id, 'sl-oe-detail')]
      Click Btn Add
      Capture Screen
      Input Supplier Code     ${supplier_code}
      Select Vat Type     ${data_list}
      Input transactionDate       ${transaction_date}
      Input datePickerDueDate         ${datePickerDueDate}
      Input Department        ${detail_department}
      Input billNo        ${detail_billNo}
      Input billDate      ${detail_billDate}
      Input vatPeriod     ${detail_vatPeriod}
      Input description    ${detail_description}
      Input bindingexpenseInfo      ${no_bindingexpenseInfo}
      Input number      ${qty}
      Input Price    ${price}
      Input discount    ${discount}
      Input taxAmount      ${taxAmountlist}
      Input Remark      ${remark}
      Input paymentCash    ${paymentCashAmount}
      Click Btn Submit
      Click Btn Confirm
      Click Btn Ok
      Set Suite Variable       ${status_true}   สถานะถูกต้อง
      Set Suite Variable       ${status_fail}   สถานะไม่ถูกต้อง
      ${columnafter}=       Get Element Count        //*[contains(@id, 'sl-oe-detail')]
      Run Keyword If       ${columnafter}<${columnbefore}        Log To Console      ${status_true}       ELSE        fail  ${columnafter} : ${status_value}
      Capture Screen