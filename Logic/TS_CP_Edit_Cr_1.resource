*** Settings ***
Library              SeleniumLibrary
Resource             ${CURDIR}/../Resource/dglforsme.resource

*** Variables ***

*** Keywords ***

CP Edit Data 1
      [Arguments]            ${username}      ${password}       ${image_name}     ${supplier_code}    ${data_list}    ${transaction_date}     ${datePickerDueDate}        ${detail_department}        ${detail_billNo}        ${detail_billDate}      ${detail_vatPeriod}     ${detail_description}      ${no_bindingexpenseInfo}      ${qty}      ${price}    ${discount}    ${taxAmountlist}     ${remark}      ${paymentCashAmount}      ${status_after_add}   
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
      #${columnbefore}=       Get Element Count        xpath://*[contains(@id, 'sl-cp-detail-receiptNo')]
      #Set Suite Variable            ${columnbefore}          
      #Log To Console          ${columnbefore}
      Click Btn Add
      Capture Screen
      Input Supplier Code     ${supplier_code}
      Select Vat Type     ${data_list}
      Input transactionDate       ${transaction_date}
      #Input datePickerDueDate         ${datePickerDueDate}
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
      #Click Btn Confirm
      Click Btn Confirm
      Click Btn Confirm
      Click Btn Ok
      Set Suite Variable       ${status_true}   สถานะถูกต้อง
      Set Suite Variable       ${status_fail}   สถานะไม่ถูกต้อง
      ${columnafter}=       Get Element Count        xpath://*[contains(@id, 'sl-cp-detail-receiptNo')]
      #Set Suite Variable         ${columnafter}
      #Log To Console          ${columnafter}   
      #Run Keyword If       ${columnafter}>${columnbefore}        Log To Console      ${status_true}       ELSE        fail  ${columnafter} : ${status_fail}
      Check Payment status    ${status_after_add}
      Click last list
      Clear Supplier Code
      Clear Supplier Name
      Clear transactionDate
      Clear billNo
      Clear billDate
      Clear detail vatPeriod
      Clear detail description
      #Clear transactions bindingexpenseInfo
      #Clear transactions description
      #Clear transactions qty
      #Clear transactions unitPrice
      #Clear transactions discount
      #Clear transactions taxAmount
      #Clear detail remark
      #Clear detail paymentCashAmount
      Calculator No vatType
      Click Submit Edit Btn
      Check Status After Add Edit
      #Check Payment edit status           ${status_after_edit}
      Click last list
      Get edit supplier code 
      Get edit billNo
      Get edit transactionDate
      Get edit detail description
      Get edit detail vatPeriod
      #Get edit transactions bindingexpenseInfo
      #Get edit detail billDate
      #Get edit transactions description
      #Get edit qty
      #Get edit unitPrice
      #Get edit transactions discount
      #Get edit detail remark
      #Get edit detail paymentCashAmount
      Capture Screen