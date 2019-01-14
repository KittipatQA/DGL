*** Settings ***
Library              SeleniumLibrary

*** Variables ***
${new_supplier_code}        A001

*** Keywords ***

Click last list
    Click Element       xpath://*[@id="sl-oe-detail-0"]/div[1]

Clear Supplier Code
    Clear Element Text      id:input-oe-detail-code
    Input Text      id:input-oe-detail-code     ${new_supplier_code}

Clear Supplier Name
    Clear Element Text      id:input-oe-detail-name

Clear billNo
    Clear Element Text      id:input-oe-detail-billNo

Clear transactionDate
    Clear Element Text      id:input-oe-detail-transactionDate

Clear detail description 
    Clear Element Text      id:input-oe-detail-description

Clear detail vatPeriod
    Clear Element Text      id:input-oe-detail-vatPeriod

Clear transactions bindingexpenseInfo
    Clear Element Text      id:input-oe-transactions-bindingexpenseInfo-0

Clear transactions description
    Clear Element Text      id:input-oe-transactions-description-0

Clear transactions qty
    Clear Element Text      id:input-oe-transactions-qty-0

Clear transactions unitPrice
    Clear Element Text      id:input-oe-transactions-unitPrice-0

Clear transactions discount
    Clear Element Text      id:input-oe-transactions-discount-0

Clear transactions taxAmount
    Clear Element Text      id:input-oe-transactions-taxAmount-0

Clear detail discount
    Clear Element Text      id:input-oe-detail-discount

Clear detail remark
    Clear Element Text      id:input-oe-detail-remark