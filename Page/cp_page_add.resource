*** Settings ***
Library              SeleniumLibrary

*** Variables ***
${status_true}      สถานะถูกต้อง
${status_false}     สถานะไม่ถูกต้อง
${table}       xpath:(//thead[@class="mat-calendar-table-header"])
${next}     xpath:(//button[@class="mat-calendar-next-button mat-icon-button"])
${previous}     xpath:(//button[@class="mat-calendar-previous-button mat-icon-button"])

*** Keywords ***

Convert Time
    [Arguments]     ${datePickerDueDate}
    ${date_now}=    splittime       ${datePickerDueDate} 
    Log To Console      ${date_now}[0]
    ${input_date}=    Set Variable        ${date_now}[0]
    ${input_month}=    Set Variable        ${date_now}[1]
    ${input_year}=    Set Variable        ${date_now}[2]
    Set Suite Variable      ${input_date}
    Set Suite Variable      ${input_month}
    Set Suite Variable      ${input_year} 

Select Date 
    
    ${currentDate} =     Get Current Date       result_format=datetime
    Log To Console      ${currentDate}
    ${year}=    Convert To Integer  ${input_year}
    ${month}=   Convert To Integer  ${input_month}
    ${date}=    Convert To Integer  ${input_date}
    ${month-diff}=  Evaluate        ${month}-${currentDate.month}
    ${year-diff}=   Evaluate        ${year}-${currentDate.year}
    ${move}=    Evaluate        ${year-diff}*12+${month-diff}
    Set Suite Variable      ${move}

    Log To Console      ${month-diff}      
    Log To Console      ${year-diff}      
    Log To Console      ${move}      
    

    ${shiftForward}=  Set Variable If  
    ...   ${move}>0  1
    ...   ${move}<0  0

    ${move}=  Set Variable If  
    ...   ${move}>0  ${move}
    ...   ${move}<0  ${move}*-1

    :FOR     ${var}     IN RANGE    0       ${move}
       \  Wait Until Element Is Visible         ${table}
       \  Click Element     ${table}
       \  Run Keyword If  ${shiftForward}==0        Click Element     ${previous} 
       \  Run Keyword If  ${shiftForward}==1        Click Element     ${next}  

    Click Element       xpath:(//div[@class="mat-calendar-body-cell-content"])[${date}]   

    ${Log_transactionDate}=        Get Value      //*[@id="input-hr-detail-transactionDate"]
    Log To Console      ${Log_transactionDate}    

Click Btn Add
    Click Button       id:btn-oe-save

Input Supplier Code  
    [Arguments]     ${supplier_code}              
    Input Text      id:input-cp-detail-code     ${supplier_code}
    Click Element       xpath://*[@id="ngb-typeahead-0-0"]

Input Supplier Name
    [Arguments]     ${supplier_name}              
    Input Text      id:input-cp-detail-name     ${supplier_name}

Select Vat Type
    [Arguments]     ${data_list}
    Click Element   id:sl-hr-detail-vatType        
    Select From List By Label       id:sl-hr-detail-vatType     ${data_list}

Input transactionDate
    [Arguments]     ${transaction_date}
    Convert Time        ${transaction_date}
    Click Element       id:input-hr-detail-transactionDate
    Select Date         
    
#Input datePickerDueDate
#    [Arguments]     ${datePickerDueDate}
#    Convert Time        ${datePickerDueDate}
#    Click Element       id:input-oe-detail-datePickerDueDate
#    Select Date 
    
Input Department
    [Arguments]     ${detail_department}   
    Input Text      id:input-cp-detail-department     ${detail_department}

Input billNo
    [Arguments]     ${detail_billNo}              
    Input Text      xpath://*[@id="input-cp-detail-billNo "]     ${detail_billNo}

Input billDate
    [Arguments]     ${detail_billDate}
    Convert Time        ${detail_billDate}
    Click Element       id:input-oe-detail-billDate
    Select Date 

Input vatPeriod
    [Arguments]     ${detail_vatPeriod}              
    Input Text      id:input-cp-detail-vatPeriod     ${detail_vatPeriod}

Input description
    [Arguments]     ${detail_description}              
    Input Text      id:input-cp-detail-description     ${detail_description}

Input bindingexpenseInfo
    [Arguments]     ${no_bindingexpenseInfo}              
    Input Text      id:cp-input-sku-0       ${no_bindingexpenseInfo}
    Click Element       xpath://span[@class="ngb-highlight ng-star-inserted"]

Input list
    [Arguments]     ${list}
    Input Text      id:cp-input-nameTH-0      ${list}
    Click Element       xpath://span[@class="ngb-highlight ng-star-inserted"]

Input number
    [Arguments]     ${qty}
    execute javascript      document.getElementById('cp-input-qty-0').value='${qty}';

Input discount
    [Arguments]     ${discount}     
    Clear Element Text      id:cp-input-discount-0        
    Input Text      id:cp-input-discount-0     ${discount}

Input Vat
    [Arguments]     ${vatPercentage}              
    Input Text      id:sl-oe-transactions-vatPercentage-0     ${vatPercentage}

#Input taxAmount
#    [Arguments]     ${taxAmountlist}    
#    Click Element      id:sl-oe-transactions-taxAmount-0                  
#    Click Element      xpath:/html/body/app-root/app-home-layout/app-layout/nb-layout/div/div/div/div/div/nb-layout-column/div/app-other-expense-detail/form/div[4]/app-table/div/div[2]/table-body/div[1]/div/div/div[8]/div/div/div/span[4]

Input Remark
    [Arguments]     ${remark}              
    Input Text      id:input-oe-detail-remark    ${remark}

Input paymentCash
    [Arguments]     ${paymentCashAmount}              
    Input Text      id:input-cp-detail-paymentCashAmount    ${paymentCashAmount}

Get paymentCash
    ${payment_Cash}=       Get Value      id:input-cp-detail-paymentCashAmount
    Log To Console      ${payment_Cash}
    Set Suite Variable      ${payment_Cash}

Input Price
    [Arguments]     ${price}    
    Clear Element Text      id:cp-input-unitPrice-0    
    Input Text      id:cp-input-unitPrice-0    ${price}

Get Price
    ${price_now}=       Get Value      id:cp-input-unitPrice-0
    Log To Console      ${price_now}
    Set Suite Variable      ${price_now}

Get Discount
    ${discount_now}=       Get Value      id:cp-input-discount-0
    Log To Console      ${discount_now}
    Set Suite Variable      ${discount_now}

Get Tax Amount
    ${tax_amount}=       Get Value      id:input-oe-transactions-taxAmount-0
    Log To Console      ${tax_amount}
    Set Suite Variable      ${tax_amount}   

Check Discount
    ${price_result}=       Get Value      id:input-cp-detail-discount
    Log To Console      ${price_result}
    Set Suite Variable      ${price_result}

Check total exempt
    ${price_exempt}=        Get Value      id:input-cp-subtotalpricevatexempt
    Log To Console      ${price_exempt}
    Set Suite Variable      ${price_exempt}

Check total before vat
    ${price_before_vat}=        Get Value      id:input-cp-subtotalpricebeforevat
    Log To Console      ${price_before_vat}
    Set Suite Variable      ${price_before_vat}

Check transactions before vat
    ${transactions_before_vat}=        Get Text      id:cp-label-beforeAmount-0
    Log To Console      ${transactions_before_vat}   
    Set Suite Variable      ${transactions_before_vat}
    

Compare ransactions before vat  
    Should Be Equal As Strings      ${return_current}     ${transactions_before_vat}

Check transactions total Price
    ${transactions_totalPrice_vat}=        Get Text      id:input-cp-transactions-totalPrice-0
    Log To Console      ${transactions_totalPrice_vat} 
    Set Suite Variable      ${transactions_totalPrice_vat}

Check net amount
    ${net_amount}=        Get Value      id:show-cp-net-amount
    Log To Console      ${net_amount}  
    Set Suite Variable      ${net_amount}

Check with holding 
    ${vat_wht}=        Get Value      id:show-cp-tax-amount
    Log To Console      ${vat_wht}  
    Set Suite Variable      ${vat_wht}

Check amount
    ${vat_amount}=        Get Value      id:show-oe-vat-amount
    Log To Console      ${vat_amount}
    Set Suite Variable      ${vat_amount}

Calculator No vatType
    Get Price
    Check total exempt
    Check total before vat
    Check net amount
    Check amount
    Check transactions before vat
    Get Discount
    Check Discount
    Check with holding 
    Should Be Equal As Strings      ${price_now}      ${price_exempt}       ${price_before_vat}     ${net_amount}       ${vat_amount}                             
    Should Be Equal As Strings      ${price_now}      ${transactions_before_vat}
    Should Be Equal As Strings      ${discount_now}     ${price_result}     ${vat_wht}

Calculator includeVatType
    Get Price
    Check total exempt
    Check total before vat
    Check net amount
    Check amount
    Check transactions before vat
    Get Discount
    Check Discount
    Check with holding 
    Should Be Equal As Strings      ${discount_now}     ${price_result} 
    Should Be Equal As Strings      ${tax_amount}     ${vat_wht}  
    Should Be Equal As Strings      ${transactions_before_vat}      ${price_exempt}     ${net_amount}

Calculator taxAmount
    Replace     ${transactions_before_vat}
    Float Change 1
    Verify multiplication of ${type_float_1} and ${2}
    Verify division of ${calculated_result} and ${100}
    Convert     ${calculated_result}
    Log To Console      ${return_current}


Calculator totalPrice
    Replace     ${transactions_before_vat}
    Float Change 1
    Replace     ${tax_amount}
    Float Change 2
    Verify subtraction of ${type_float_1} and ${type_float_2}
    Log To Console     ${calculated_result}
    Convert     ${calculated_result}
    Log To Console      ${return_current}

Compare totalPrice
    Should Be Equal As Strings      ${return_current}     ${transactions_totalPrice_vat}

Compare taxAmount
    Should Be Equal As Strings      ${return_current}     ${tax_amount}

Check Status After Add
    ${status_list}=   Get Text     //*[@id="sl-cp-detail-status-0"]
    Set Suite Variable      ${status_list}
    Log To Console      ${status_list}

Check Payment status
    [Arguments]     ${status_after_add}
    Check Status After Add 
    Should Be Equal As Strings      ${status_after_add}     ${status_list}      

Click Btn Submit
    Click Button       id:btn-oe-submit

Click Btn Confirm
    Click Button        id:btn-modal-cancel

Click Btn Ok
    Click Element        //*[@id="container"]/div/div[3]/div/button

Replace
    [Arguments]     ${value_comma}
        ${no_comma} =        Replace String          ${value_comma}          ,               ${EMPTY}
        Log To Console          ${no_comma}   
        Set Suite Variable      ${no_comma}

Float Change 1
        ${type_float_1} =      Convert To Number        ${no_comma}
        Set Suite Variable      ${type_float_1}

Float Change 2
        ${type_float_2} =      Convert To Number        ${no_comma}
        Set Suite Variable      ${type_float_2}     

Calculator includeVat
    Get Price
    Replace     ${price_now}
    Float Change 1      
    Get Discount
    Replace     ${discount_now}
    Float Change 2
    Verify subtraction of ${type_float_1} and ${type_float_2}
    Convert     ${calculated_result}