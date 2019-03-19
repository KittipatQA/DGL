*** Settings ***
Library              SeleniumLibrary
Resource             ${CURDIR}/../Resource/dglforsme.resource

*** Variables ***

*** Keywords ***

Oe Cancel delete
      [Arguments]            ${username}      ${password}       ${image_name}     ${supplier_code}    ${data_list}    ${transaction_date}     ${datePickerDueDate}        ${detail_department}        ${detail_billNo}        ${detail_billDate}      ${detail_vatPeriod}     ${detail_description}      ${no_bindingexpenseInfo}      ${qty}      ${price}    ${discount}    ${taxAmountlist}     ${remark}      ${paymentCashAmount}      ${status_after_add}         ${status_cancel}                          
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
      #Input taxAmount      ${taxAmountlist}
      Input Remark      ${remark}
      Input paymentCash    ${paymentCashAmount}
      Calculator No vatType
      Capture Screen
      Click Btn Submit
      Click Btn Confirm
      Click Btn Ok
      Set Suite Variable       ${status_true}   สถานะถูกต้อง
      Set Suite Variable       ${status_fail}   สถานะไม่ถูกต้อง
      ${columnafter}=       Get Element Count        //*[contains(@id, 'sl-oe-detail')]
      Run Keyword If       ${columnafter}>${columnbefore}        Log To Console      ${status_true}       ELSE        fail  ${columnafter} : ${status_fail}
      Check Payment status    ${status_after_add}
      Capture Screen
      Click last list
      Click Btn cancel
      Capture Screen
      Click Btn confirm cancel and delete
      Capture Screen
      Check Status After cancel
      Check Status Cancel           ${status_cancel}
      Click last list
      Capture Screen
      Click Btn delete
      Capture Screen
      Click Btn confirm cancel and delete
      Capture Screen