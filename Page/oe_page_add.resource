*** Settings ***
Library              SeleniumLibrary

*** Variables ***

*** Keywords ***

Click Btn Add
    Click Button       id:btn-oe-save

Input Supplier Code  
    [Arguments]     ${supplier_code}              
    Input Text      id:input-oe-detail-code     ${supplier_code}
    Click Element       id:ngb-typeahead-0-0

Input Supplier Name
    [Arguments]     ${supplier_name}              
    Input Text      id:input-oe-detail-name     ${supplier_name}

Select Vat Type
    [Arguments]     ${data_list}
    Click Element   id:sl-oe-detail-vatType        
    Select From List By Label       id:sl-oe-detail-vatType     ${data_list}

Input transactionDate
    [Arguments]     ${transaction_date}
    Clear Element Text      id:input-oe-detail-transactionDate           
    Input Text      id:input-oe-detail-transactionDate     ${transaction_date}

Input datePickerDueDate
    [Arguments]     ${datePickerDueDate}
    Clear Element Text      id:input-oe-detail-datePickerDueDate              
    Input Text      id:input-oe-detail-datePickerDueDate     ${datePickerDueDate}

Input Department
    [Arguments]     ${detail_department}   
    Input Text      id:input-oe-detail-department     ${detail_department}

Input billNo
    [Arguments]     ${detail_billNo}              
    Input Text      id:input-oe-detail-billNo     ${detail_billNo}

Input billDate
    [Arguments]     ${detail_billDate}
    Clear Element Text      id:input-oe-detail-billDate              
    Input Text      id:input-oe-detail-billDate     ${detail_billDate}

Input vatPeriod
    [Arguments]     ${detail_vatPeriod}              
    Input Text      id:input-oe-detail-vatPeriod     ${detail_vatPeriod}

Input description
    [Arguments]     ${detail_description}              
    Input Text      id:input-oe-detail-description     ${detail_description}

Input bindingexpenseInfo
    [Arguments]     ${no_bindingexpenseInfo}              
    Input Text      id:input-oe-transactions-bindingexpenseInfo-0       ${no_bindingexpenseInfo}
    Click Element       id:ngb-typeahead-6-0
Input number
    [Arguments]     ${qty}
    Clear Element Text      id:input-oe-transactions-qty-0                    
    Input Text      id:input-oe-transactions-qty-0     ${qty}

Input discount
    [Arguments]     ${discount}              
    Input Text      id:input-oe-transactions-discount-0     ${discount}

Input Vat
    [Arguments]     ${vatPercentage}              
    Input Text      id:sl-oe-transactions-vatPercentage-0     ${vatPercentage}

Input taxAmount
    [Arguments]     ${taxAmountlist}    
    Click Element   id:input-oe-transactions-taxAmount-0        
    Select From List By Label       id:input-oe-transactions-taxAmount-0     ${taxAmountlist}          

Input Remark
    [Arguments]     ${remark}              
    Input Text      id:input-oe-detail-remark    ${remark}

Input paymentCash
    [Arguments]     ${paymentCashAmount}              
    Input Text      id:input-oe-detail-paymentCashAmount    ${paymentCashAmount}

Input Price
    [Arguments]     ${price}    
    Clear Element Text      id:input-oe-transactions-unitPrice-0    
    Input Text      id:input-oe-transactions-unitPrice-0    ${price}

Click Btn Submit
    Click Button       id:btn-oe-submit

Click Btn Confirm
    Click Button        id:btn-modal-cancel
























    

