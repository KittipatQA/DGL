*** Settings ***
Library              SeleniumLibrary

*** Variables ***
${new_supplier_code}        A001
${new_billNo}     1455467879112
${new_transactionDate}     22/12/2018
${new_detail_description}       ค่าเช่า 
${new_vatPeriod}       12/61
${new_transactions_bindingexpenseInfo}      53-0002
${new_billDate}     22/12/2018
${new_transactions_description}     ค่าอินเตอร์เน็ต
${new_qty}     1
${new_transactions_unitPrice}       6,000.00
${new_detail_discount}      0.00
${new_detail_remark}        จ่ายค่าอินเตอร์เน็ต        
${new_paymentCashAmount}        6,000.00
${new_status_list}      ค้างชำระ

*** Keywords ***

Get edit unitPrice
    ${edit_new_transactions_unitPrice}=       Get Value      id:cp-input-unitPrice-0
    Log To Console      ${edit_new_transactions_unitPrice}
    #${Convert_unitPrice} =      convert_cur     ${edit_new_transactions_unitPrice}     
    Should Be Equal As Strings         ${edit_new_transactions_unitPrice}        ${new_transactions_unitPrice} 


Get edit detail paymentCashAmount  
    ${edit_new_detail_paymentCashAmount}=       Get Value      id:input-cp-detail-paymentCashAmount
    Log To Console      ${edit_new_detail_paymentCashAmount}
    Set Suite Variable      ${edit_new_detail_paymentCashAmount}
    Should Be Equal As Strings         ${edit_new_detail_paymentCashAmount}        ${new_paymentCashAmount} 

Get edit transactions discount  
    ${edit_new_transactions_discount}=       Get Value      id:cp-input-discount-0
    Log To Console      ${edit_new_transactions_discount}
    #${convert_transaction_discount} =        convert_cur     ${edit_new_transactions_discount}
    Should Be Equal As Strings         ${edit_new_transactions_discount}        ${new_detail_discount} 

Get edit detail remark  
    ${edit_new_detail_remark}=       Get Value      id:input-oe-detail-remark
    Log To Console      ${edit_new_detail_remark}
    Set Suite Variable      ${edit_new_detail_remark}
    Should Be Equal As Strings         ${edit_new_detail_remark}        ${new_detail_remark} 

Get edit supplier code 
    ${edit_new_supplier_code}=       Get Value      id:input-cp-detail-code
    Log To Console      ${edit_new_supplier_code}
    Set Suite Variable      ${edit_new_supplier_code}
    Should Be Equal As Strings         ${edit_new_supplier_code}        ${new_supplier_code} 

Get edit billNo
    ${edit_new_billNo}=       Get Value      xpath://*[@id="input-cp-detail-billNo "]
    Log To Console      ${edit_new_billNo}
    Set Suite Variable      ${edit_new_billNo}
    Should Be Equal As Strings         ${edit_new_billNo}        ${new_billNo} 

Get edit transactionDate
   ${edit_new_transactionDate}=       Get Value      id:input-cp-detail-transactionDate
    Log To Console      ${edit_new_transactionDate}
    Set Suite Variable      ${edit_new_transactionDate}
    Should Be Equal As Strings         ${edit_new_transactionDate}        ${new_transactionDate} 

Get edit detail description
    ${edit_new_transactionDate}=       Get Value      id:input-cp-detail-description
    Log To Console      ${edit_new_transactionDate}
    Set Suite Variable      ${edit_new_transactionDate}
    Should Be Equal As Strings         ${edit_new_transactionDate}        ${new_detail_description}    

Get edit detail vatPeriod
    ${edit_new_vatPeriod}=       Get Value      id:input-cp-detail-vatPeriod
    Log To Console      ${edit_new_vatPeriod}
    Set Suite Variable      ${edit_new_vatPeriod}
    Should Be Equal As Strings         ${edit_new_vatPeriod}        ${new_vatPeriod}    

Get edit transactions bindingexpenseInfo
    ${edit_new_transactions_bindingexpenseInfo}=       Get Value      id:cp-input-sku-0
    Log To Console      ${edit_new_transactions_bindingexpenseInfo}
    Set Suite Variable      ${edit_new_transactions_bindingexpenseInfo}
    Should Be Equal As Strings         ${edit_new_transactions_bindingexpenseInfo}        ${new_transactions_bindingexpenseInfo}  

Get edit detail billDate
    ${edit_new_detail_billDate}=       Get Value      id:input-oe-detail-billDate
    Log To Console      ${edit_new_detail_billDate}
    Set Suite Variable      ${edit_new_detail_billDate}
    Should Be Equal As Strings         ${edit_new_detail_billDate}        ${new_billDate} 

Get edit transactions description
    ${edit_new_transactions_description}=       Get Value      id:input-oe-transactions-description-0
    Log To Console      ${edit_new_transactions_description}
    Set Suite Variable      ${edit_new_transactions_description}
    Should Be Equal As Strings         ${edit_new_transactions_description}        ${new_transactions_description}    

Get edit qty
    ${edit_new_qty}=       Get Value      id:input-oe-transactions-qty-0
    Log To Console      ${edit_new_qty}
    Set Suite Variable      ${edit_new_qty}
    Should Be Equal As Strings         ${edit_new_qty}        ${new_qty}    

Click Submit Edit Btn
    Click Element      id:btn-oe-submit
    Click Element      id:btn-modal-cancel
    Click Element      xpath://button[@class="btn-dark-blue"]

Click last list
    Click Element       xpath://*[@id="sl-cp-detail-0"]

Clear Supplier Code
    Clear Element Text      id:input-cp-detail-code
    Input Text      id:input-cp-detail-code     ${new_supplier_code}
    Click Element      id:input-cp-detail-code
    
Clear Supplier Name
    Click Element      id:input-cp-detail-name

Clear billNo
    Clear Element Text      xpath://*[@id="input-cp-detail-billNo "]
    Input Text      xpath://*[@id="input-cp-detail-billNo "]     ${new_billNo}
    
Clear billDate
    #[Arguments]     ${new_billDate}
    Convert Time        ${new_billDate}
    Click Element       id:input-oe-detail-billDate
    Select Date 

Clear transactionDate
    #[Arguments]     ${new_transactionDate}
    Convert Time        ${new_transactionDate}
    Click Element       id:input-hr-detail-transactionDate
    Select Date   

Clear detail description 
    Clear Element Text      id:input-cp-detail-description
    Input Text      id:input-cp-detail-description    ${new_detail_description}

Clear detail vatPeriod
    Clear Element Text      id:input-cp-detail-vatPeriod
    Input Text      id:input-cp-detail-vatPeriod    ${new_vatPeriod}

Clear transactions bindingexpenseInfo
    Clear Element Text      id:cp-input-sku-0
    Input Text      id:cp-input-sku-0    ${new_transactions_bindingexpenseInfo}
    Click Element      id:cp-input-sku-0

Clear transactions description
    Click Element      id:input-cp-detail-description

Clear transactions qty
    [Arguments]     ${qty}
    execute javascript      document.getElementById('cp-input-qty-0').value='${qty}';

Clear transactions unitPrice
    Clear Element Text      id:cp-input-unitPrice-0
    Input Text      id:cp-input-unitPrice-0    ${new_transactions_unitPrice}

Clear transactions discount
    Clear Element Text      id:input-oe-transactions-discount-0
    Input Text      id:input-oe-transactions-discount-0    ${new_detail_discount}

Clear transactions taxAmount
    Clear Element Text      id:input-oe-transactions-taxAmount-0
    

Clear detail discount
    Clear Element Text      id:cp-input-discount-0
    Input Text      id:cp-input-discount-0    ${new_detail_discount}
    
Clear detail remark
    Clear Element Text      id:input-oe-detail-remark
    Input Text      id:input-oe-detail-remark    ${new_detail_remark}

Clear detail paymentCashAmount
    Clear Element Text      id:input-cp-detail-paymentCashAmount
    Input Text      id:input-cp-detail-paymentCashAmount    ${new_paymentCashAmount}

Check Payment edit status
    [Arguments]     ${status_after_edit}
    Should Be Equal As Strings      ${status_after_edit}     ${new_status_list}

Check Status After Add Edit
    ${status_after_edit}=   Get Text     //*[@id="sl-cp-detail-status-0"]
    Set Suite Variable      ${status_after_edit}
    Log To Console      ${status_after_edit}