*** Settings ***
Library              SeleniumLibrary
Resource             ${CURDIR}/../Resource/dglforsme.resource

*** Variables ***

*** Keywords ***

Oe Edit Data 1
      [Arguments]            ${username}      ${password}       ${image_name}     ${supplier_code}    ${data_list}    ${transaction_date}     ${detail_billDate}      ${detail_vatPeriod}     ${detail_description}      ${list}      ${qty}      ${price}    ${discount}     ${remark}      ${paymentCashAmount}           ${status_after_add}        
      Set Selenium Speed     0.6
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
      Input billDate      ${detail_billDate}
      Input vatPeriod     ${detail_vatPeriod}
      Input description    ${detail_description}
      Input list      ${list}
      Input number      ${qty}
      Input Price    ${price}
      Input discount    ${discount}
      #Input taxAmount      ${taxAmountlist}
      Input Remark      ${remark}
      Input paymentCash    ${paymentCashAmount}
      Capture Screen
      Calculator includeVat
      Check transactions before vat
      Compare ransactions before vat 
      Get Tax Amount
      Calculator taxAmount
      #Compare taxAmount
      Calculator totalPrice
      Check transactions total Price
      Compare totalPrice
      Check total exempt
      Check net amount
      Check amount
      Get paymentCash
      Check total before vat
      Calculator includeVatType
      Click Btn Submit
      Capture Screen
      Click Btn Confirm
      Capture Screen
      Click Btn Ok
      Set Suite Variable       ${status_true}   สถานะถูกต้อง
      Set Suite Variable       ${status_fail}   สถานะไม่ถูกต้อง
      ${columnafter}=       Get Element Count        //*[contains(@id, 'sl-oe-detail')]
      Run Keyword If       ${columnafter}>${columnbefore}        Log To Console      ${status_true}       ELSE        fail  ${columnafter} : ${status_fail}
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