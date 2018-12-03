*** Settings ***
Library              SeleniumLibrary

*** Variables ***

*** Keywords ***

Click Btn Add
    Click Button       id:btn-oe-save

Input Supplier Code 
    [Arguments]     ${supplier_code}              
    Input Text      id:input-oe-detail-code     ${supplier_code}

Input Supplier Name
    [Arguments]     ${supplier_name}              
    Input Text      id:input-oe-detail-name     ${supplier_name}

Select Vat Type
    [Arguments]     ${data_list}         
    Select From List        ${data_list}

Input transactionDate
    [Arguments]     ${transaction_date}              
    Input Text      id:input-oe-detail-transactionDate     ${transaction_date}

Input datePickerDueDate
    [Arguments]     ${datePickerDueDate}              
    Input Text      id:input-oe-detail-datePickerDueDate     ${datePickerDueDate}

Input Department
    [Arguments]     ${detail_department}              
    Input Text      id:input-oe-detail-department     ${input-oe-detail-detail_department}

Input billNo
    [Arguments]     ${detail_billNo}              
    Input Text      id:input-oe-detail-billNo     ${detail_billNo}

Input billDate
    [Arguments]     ${detail_billDate}              
    Input Text      id:input-oe-detail-billDate     ${detail_billDate}

Input vatPeriod
    [Arguments]     ${detail_vatPeriod}              
    Input Text      id:input-oe-detail-vatPeriod     ${detail_vatPeriod}

Input description
    [Arguments]     ${detail_description}              
    Input Text      id:input-oe-detail-description     ${detail_description}

Input bindingexpenseInfo
    [Arguments]     ${no_bindingexpenseInfo}              
    Input Text      id:input-oe-transactions-bindingexpenseInfo-0     ${no_bindingexpenseInfo}

Input number
    [Arguments]     ${qty}              
    Input Text      id:input-oe-transactions-qty-0     ${qty}

Input discount
    [Arguments]     ${discount}              
    Input Text      id:input-oe-transactions-discount-0     ${discount}

Input Vat
    [Arguments]     ${vatPercentage}              
    Input Text      id:sl-oe-transactions-vatPercentage-0     ${vatPercentage}

Input taxAmount
    [Arguments]     ${taxAmount}              
    Input Text      id:input-oe-transactions-taxAmount-0     ${taxAmount}

Iuput Remark
    [Arguments]     ${remark}              
    Input Text      id:input-oe-detail-remark    ${remark}

Iuput paymentCash
    [Arguments]     ${paymentCashAmount}              
    Input Text      id:input-oe-detail-paymentCashAmount    ${paymentCashAmount}

Click Btn Submit
    Click Button       id:btn-oe-submit
























    
