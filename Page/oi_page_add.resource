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
    #Click Element       xpath:(//*[@id="input-oe-detail-transactionDate"])
    ${currentDate} =     Get Current Date       result_format=datetime
    Log To Console      ${currentDate}
    ${year}=    Convert To Integer  ${input_year}
    ${month}=   Convert To Integer  ${input_month}
    ${date}=    Convert To Integer  ${input_date}
    ${month-diff}=  Evaluate        ${month}-${currentDate.month}
    ${year-diff}=   Evaluate        ${year}-${currentDate.year}
    ${move}=    Evaluate        ${year-diff}*12+${month-diff}

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

    ${Log_transactionDate}=        Get Value      xpath://*[@id="input-oe-detail-transactionDate"]
    Log To Console      ${Log_transactionDate}    


Click Btn Add
    Click Button       id:btn-oe-save

Input Supplier Code  
    [Arguments]     ${supplier_code}              
    Input Text      id:input-oi-detail-code     ${supplier_code}
    Click Element       id:ngb-typeahead-0-0

Input Supplier Name
    [Arguments]     ${supplier_name}              
    Input Text      id:input-oi-detail-name     ${supplier_name}

Select Vat Type
    [Arguments]     ${data_list}
    Click Element   id:sl-oi-detail-vatType        
    Select From List By Label       id:sl-oi-detail-vatType     ${data_list}

Input transactionDate
    [Arguments]     ${transaction_date}
    Convert Time        ${transaction_date}           
    Click Element      id:input-oi-detail-transactionDate
    Select Date

Input datePickerDueDate
    [Arguments]     ${datePickerDueDate}
    Convert Time        ${datePickerDueDate}
    Click Element      id:input-oi-detail-datePickerDueDate              
    Select Date

Input Department
    [Arguments]     ${detail_department}   
    Input Text      id:input-oi-detail-department     ${detail_department}

Input description
    [Arguments]     ${detail_description}              
    Input Text      id:input-oi-detail-description     ${detail_description}

Input bindingexpenseInfo
    [Arguments]     ${no_bindingexpenseInfo}              
    Input Text      id:input-oi-transactions-bindingrevenueInfo-0       ${no_bindingexpenseInfo}
    Click Element       xpath://span[@class="ngb-highlight ng-star-inserted"]

Input list
    [Arguments]     ${list}
    Input Text      id:input-oi-transactions-description-0      ${list}
    Click Element       xpath://span[@class="ngb-highlight ng-star-inserted"]

Input number
    [Arguments]     ${qty}
    Clear Element Text      id:input-oi-transactions-qty-0                    
    Input Text      id:input-oi-transactions-qty-0     ${qty}

Input discount
    [Arguments]     ${discount}     
    Clear Element Text      id:input-oi-transactions-discount-0        
    Input Text      id:input-oi-transactions-discount-0     ${discount}

Input bindingexpenseInfo2
    [Arguments]     ${no_bindingexpenseInfo2}              
    Input Text      id:input-oi-transactions-bindingrevenueInfo-1       ${no_bindingexpenseInfo2}
    Click Element       xpath://span[@class="ngb-highlight ng-star-inserted"]

Input number2
    [Arguments]     ${qty2}
    Clear Element Text      id:input-oi-transactions-qty-1               
    Input Text      id:input-oi-transactions-qty-1     ${qty2}

Input discount2
    [Arguments]     ${discount2}     
    Clear Element Text      id:input-oi-transactions-discount-1        
    Input Text      id:input-oi-transactions-discount-1     ${discount2}

Input Vat
    [Arguments]     ${vatPercentage}              
    Input Text      id:sl-oi-transactions-vatPercentage-0     ${vatPercentage}

Input taxAmount
    [Arguments]     ${taxAmountlist}    
    Click Element      id:sl-oi-transactions-taxAmount-0                  
    Click Element      xpath:/html/body/app-root/app-home-layout/app-layout/nb-layout/div/div/div/div/div/nb-layout-column/div/app-other-expense-detail/form/div[4]/app-table/div/div[2]/table-body/div[1]/div/div/div[8]/div/div/div/span[4]

Input Remark
    [Arguments]     ${remark}              
    Input Text      id:input-oi-detail-remark    ${remark}

Input paymentCash
    [Arguments]     ${paymentCashAmount}              
    Input Text      id:input-oi-detail-paymentCashAmount    ${paymentCashAmount}

Get paymentCash
    ${payment_Cash_input}=       Get Value      id:input-oi-detail-paymentCashAmount
    Float Change 3      ${payment_Cash_input}             
    ${payment_Cash} =       Set Variable        ${type_float_3}
    Set Suite Variable      ${payment_Cash}             

Input Price
    [Arguments]     ${price}    
    Clear Element Text      id:input-oi-transactions-unitPrice-0    
    Input Text      id:input-oi-transactions-unitPrice-0    ${price}

Input Price 2
    [Arguments]     ${price2}    
    Clear Element Text      id:input-oi-transactions-unitPrice-1    
    Input Text      id:input-oi-transactions-unitPrice-1    ${price2}

Get Price
    ${price_now}=       Get Value      id:input-oi-transactions-unitPrice-0
    Log To Console      ${price_now}
    Set Suite Variable      ${price_now}

Get Price 2
    ${price_now2}=       Get Value      id:input-oi-transactions-unitPrice-1
    Log To Console      ${price_now2}
    Set Suite Variable      ${price_now2}

Get Discount
    ${discount_now}=       Get Value      id:input-oi-transactions-discount-0
    Log To Console      ${discount_now}
    Set Suite Variable      ${discount_now}

Get Discount 2
    ${discount_now2}=       Get Value      id:input-oi-transactions-discount-1
    Log To Console      ${discount_now2}
    Set Suite Variable      ${discount_now2}

Get Tax Amount
    ${tax_amount}=       Get Value      id:input-oi-transactions-taxAmount-0
    Log To Console      ${tax_amount}
    Set Suite Variable      ${tax_amount}   

Check Discount
    ${price_result}=       Get Value      id:input-oi-detail-discount
    Log To Console      ${price_result}
    Set Suite Variable      ${price_result}

Check total exempt
    ${price_exempt}=        Get Value      id:show-oi-total-before-vat-exempt
    Log To Console      ${price_exempt}
    Set Suite Variable      ${price_exempt}

Check total amount
    ${last_price_total_amount_input}=        Get Value      id:show-oi-total-amount
    Replace     ${last_price_total_amount_input}
    Float Change 1
    ${last_price_total_amount} =        Set Variable        ${type_float_1}        
    Log To Console      Test:${last_price_total_amount}
    Set Suite Variable      ${last_price_total_amount}
         
Check total before vat
    ${price_before_vat}=        Get Value      id:show-oi-total-before-vat
    Log To Console       this:  ${price_before_vat}
    Set Suite Variable      ${price_before_vat}

Check transactions before vat
    ${transactions_before_vat}=        Get Text      id:input-oi-transactions-beforeAmount-0
    Log To Console      ${transactions_before_vat}   
    Set Suite Variable      ${transactions_before_vat}
    

Compare ransactions before vat  
    Should Be Equal As Strings      ${return_current}     ${transactions_before_vat}

Check transactions total Price
    ${transactions_totalPrice_vat}=        Get Text      id:input-oi-transactions-totalPrice-0
    Log To Console      ${transactions_totalPrice_vat} 
    Set Suite Variable      ${transactions_totalPrice_vat}

Check net amount
    ${net_amount}=        Get Value      id:show-oi-net-amount
    Log To Console      ${net_amount}  
    Set Suite Variable      ${net_amount}

Check with holding 
    ${vat_wht}=        Get Value      id:show-oi-wht
    Log To Console      ${vat_wht}  
    Set Suite Variable      ${vat_wht}

Check amount
    ${vat_amount}=        Get Value      id:show-oi-vat-amount
    Log To Console      ${vat_amount}
    Set Suite Variable      ${vat_amount}

Check tax amount
    ${tax_amount}=        Get Value      id:input-oi-detail-taxAmount
    Log To Console      ${tax_amount}
    Set Suite Variable      ${tax_amount}


Calculator No vatType
    Get Price
    Check total before vat
    #Check net amount
    Check amount
    #Check transactions before vat
    Get Discount
    Check Discount
    Check total exempt
    Check total amount
    #Check with holding
    Get paymentCash
    Should Be Equal As Strings      ${price_now}      ${price_exempt}             
    Should Be Equal As Strings      ${price_result}     ${discount_now}     ${price_before_vat}           
    Should Be Equal As Strings      ${last_price_total_amount}       ${payment_Cash}        

Calculator No vatType And Discount
    Calculator includeVat
    Check total before vat
    #Check net amount
    Check amount
    #Check transactions before vat
    Get Discount
    Check Discount
    Check total exempt
    Check total amount
    Get paymentCash
    #Check with holding 
    Should Be Equal As Strings      ${return_current}      ${price_exempt}             
    Should Be Equal As Strings      ${price_result}     ${discount_now}     ${price_before_vat}           
    Should Be Equal As Strings      ${payment_Cash}        ${last_price_total_amount}

Calculator No vatType More List And Discount 
    Calculator includeVat
    Check net amount
    Check amount
    #Check transactions before vat
    Get Discount
    Check Discount
    Check total exempt
    Check total amount
    Get paymentCash
    Check total before vat
    #Check with holding 
    Should Be Equal As Strings      ${return_current}      ${price_exempt}             
    Should Be Equal As Strings      ${price_result}     ${discount_now}     #${price_before_vat}           
    #Should Be Equal As Strings      ${payment_Cash}        ${price_before_vat} 

Calculator More List Discount
    Get Discount
    Replace     ${discount_now}
    Float Change 1
    Get Discount 2
    Replace     ${discount_now2}
    Float Change 2
    Verify addition of ${type_float_1} and ${type_float_2}
    Convert     ${calculated_result}
    Get Price
    Replace     ${price_now}
    Float Change 1
    Get Price 2
    Replace     ${price_now2}
    Float Change 2
    Verify addition of ${type_float_1} and ${type_float_2}
    Convert2     ${calculated_result}
    Replace     ${return_current}
    Float Change 1
    Replace     ${return_current2}
    Float Change 2
    Verify subtraction of ${type_float_2} and ${type_float_1}
    Check amount
    Check total exempt
    Check tax amount
    Get paymentCash
    Check total amount
    Check total before vat
    Convert     ${calculated_result}
    Should Be Equal As Strings      ${vat_amount}      ${price_exempt}             
    Should Be Equal As Strings      ${price_before_vat}   ${tax_amount}        
    Should Be Equal As Strings      ${payment_Cash}        ${last_price_total_amount}


                

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
    ${status_list}=   Get Text     //*[@id="sl-oe-detail-0"]/div[7]
    Set Suite Variable      ${status_list}
    Log To Console      ${status_list}

Check Payment status
    [Arguments]     ${status_after_add}
    Check Status After Add 
    Should Be Equal As Strings      ${status_after_add}     ${status_list}      

Click Btn Submit
    Click Button       id:btn-oi-submit

Click Btn Confirm
    Click Button        id:btn-modal-cancel

Click Btn Ok
    Click Element        xpath://button[@class="btn-dark-blue"]

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

Float Change 3
        [Arguments]     ${input_value}
        ${type_float_3} =      Convert To Number        ${input_value}      
        Set Suite Variable      ${type_float_3}     

Calculator includeVat
    Get Price
    Replace     ${price_now}
    Float Change 1      
    Get Discount
    Replace     ${discount_now}
    Float Change 2
    Verify subtraction of ${type_float_1} and ${type_float_2}
    Convert     ${calculated_result}

