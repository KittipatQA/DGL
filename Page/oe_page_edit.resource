*** Settings ***
Library              SeleniumLibrary

*** Variables ***
${new_supplier_code}        A001
${new_billNo}     29/11/2018
${new_transactionDate}     22/12/2018
${new_detail_description}       ค่าเช่า 
${new_vatPeriod}       12/61
${new_transactions_bindingexpenseInfo}      53-0002
${new_billDate}     22/12/2018
${new_transactions_description}     ค่าอินเตอร์เน็ต
${new_qty}     2
${new_transactions_unitPrice}       3000
${new_transactions_taxAmount}        3
${new_detail_discount}      500
${new_detail_remark}        จ่ายค่าอินเตอร์เน็ต        
${new_paymentCashAmount}        5500


*** Keywords ***

Click last list
    Click Element       xpath://*[@id="sl-oe-detail-0"]/div[1]

Clear Supplier Code
    Clear Element Text      id:input-oe-detail-code
    Input Text      id:input-oe-detail-code     ${new_supplier_code}
    Click Element      id:input-oe-detail-code
    
Clear Supplier Name
    Click Element      id:input-oe-detail-name

Clear billNo
    Clear Element Text      id:input-oe-detail-billNo
    Input Text      id:input-oe-detail-billNo     ${new_billNo}
    
Clear billDate
    Clear Element Text      id:input-oe-detail-billDate
    Input Text      id:input-oe-detail-billDate     ${new_billDate}

Clear transactionDate
    Clear Element Text      id:input-oe-detail-transactionDate
    Input Text      id:input-oe-detail-transactionDate     ${new_transactionDate}

Clear detail description 
    Clear Element Text      id:input-oe-detail-description
    Input Text      id:input-oe-detail-description    ${new_detail_description}

Clear detail vatPeriod
    Clear Element Text      id:input-oe-detail-vatPeriod
    Input Text      id:input-oe-detail-vatPeriod    ${new_vatPeriod}

Clear transactions bindingexpenseInfo
    Clear Element Text      id:input-oe-transactions-bindingexpenseInfo-0
    Input Text      id:input-oe-transactions-bindingexpenseInfo-0    ${new_transactions_bindingexpenseInfo}
    Click Element      id:input-oe-transactions-bindingexpenseInfo-0

Clear transactions description
    Click Element      id:input-oe-transactions-description-0
    Clear Element Text      id:input-oe-transactions-description-0
    Input Text      id:input-oe-transactions-description-0    ${new_transactions_description}
    

Clear transactions qty
    Click Element      id:input-oe-transactions-qty-0
    Clear Element Text      id:input-oe-transactions-qty-0
    Input Text      id:input-oe-transactions-qty-0    ${new_qty}

Clear transactions unitPrice
    Clear Element Text      id:input-oe-transactions-unitPrice-0
    Input Text      id:input-oe-transactions-unitPrice-0    ${new_transactions_unitPrice}

Clear transactions discount
    Clear Element Text      id:input-oe-transactions-discount-0
    Input Text      id:input-oe-transactions-discount-0    ${new_detail_discount}

Clear transactions taxAmount
    Clear Element Text      id:input-oe-transactions-taxAmount-0
    Input Text      id:input-oe-transactions-taxAmount-0    ${new_transactions_taxAmount}

Clear detail discount
    Clear Element Text      id:input-oe-detail-discount
    Input Text      id:input-oe-detail-discount    ${new_detail_discount}
    
Clear detail remark
    Clear Element Text      id:input-oe-detail-remark
    Input Text      id:input-oe-detail-remark    ${new_detail_remark}

Clear detail paymentCashAmount
    Clear Element Text      id:input-oe-detail-paymentCashAmount
    Input Text      id:input-oe-detail-paymentCashAmount    ${new_detail_remark}