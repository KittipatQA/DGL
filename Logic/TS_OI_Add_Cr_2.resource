*** Settings ***
Library              SeleniumLibrary
Resource             ${CURDIR}/../Resource/dglforsme.resource

*** Variables ***

*** Keywords ***

OI Add Data 2
      [Arguments]            ${username}      ${password}       ${image_name}     ${supplier_code}          ${transaction_date}            ${no_bindingexpenseInfo}            ${detail_description}        ${qty}        ${price}            ${discount}       ${paymentCashAmount}      ${status_after_add}                          
      Set Selenium Speed     0.6
      Set Directory          ${image_name}
      Capture Screen
      Input User             ${username}
      Input Password         ${password}
      Capture Screen
      Login Submit                 
      Wait Until Element Is Visible           ${logic}
      Capture Screen
      Click Tab Sell
      Capture Screen
      Click Tab otherRevenue
      ${columnbefore}=       Get Element Count        //*[contains(@id, 'sl-oe-detail')]
      Click Btn Add
      Capture Screen
      Input Supplier Code     ${supplier_code}
      #Select Vat Type     ${data_list}
      Input transactionDate       ${transaction_date}
      Input bindingexpenseInfo            ${no_bindingexpenseInfo}            
      Input description    ${detail_description}
      #Input list
      Input number      ${qty}
      Input Price    ${price}
      Input discount    ${discount}
      #Input taxAmount      ${taxAmountlist}
      Input paymentCash    ${paymentCashAmount}
      Calculator No vatType And Discount
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