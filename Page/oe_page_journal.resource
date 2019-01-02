*** Settings ***
Library              SeleniumLibrary
Library              Process

*** Variables ***

*** Keywords ***

Select Journal List
    [Arguments]     ${number}
    Click Element       name:${number}

Click Btn Print
    Click Button       id:btn-oe-preview

Get precompany name
    ${precompany_name}=       Get Value      id:pre-company-name-doc-0
    Log To Console      ${precompany_name}
    Set Suite Variable      ${precompany_name}

Get company addressConcat
    ${company_addressConcat}=       Get Value      id:pre-company-addressConcat-doc-0
    Log To Console      ${company_addressConcat}
    Set Suite Variable      ${company_addressConcat}

Get taxIdentification
    ${company_taxIdentification}=       Get Value      id:pre-company-taxIdentification-doc-0
    Log To Console      ${company_taxIdentification}
    Set Suite Variable      ${company_taxIdentification}

Get branch
    ${branch}=       Get Value      id:pre-company-branch-no-doc-0
    Log To Console      ${branch}
    Set Suite Variable      ${branch}

Get description
    ${description}=       Get Value      id:pre-description-report-0
    Log To Console      ${description}
    Set Suite Variable      ${description}

Get receipt no
    ${receipt_no}=       Get Value      id:pre-receipt-no-report
    Log To Console      ${receipt_no}
    Set Suite Variable      ${receipt_no}

Get bill no
    ${bill_no}=       Get Value      id:pre-bill-no-report-0
    Log To Console      ${bill_no}
    Set Suite Variable      ${bill_no}

Get bill date
    ${bill date}=       Get Value      id:pre-bill-date-report-0
    Log To Console      ${bill date}
    Set Suite Variable      ${bill date}

Get name report
    ${name_report}=       Get Value      id:pre-account-payable-info-name-report-0
    Log To Console      ${name_report}
    Set Suite Variable      ${name_report}

Get item description
    ${item_description}=       Get Value      id:pre-item-description-report-0-0
    Log To Console      ${item_description}
    Set Suite Variable      ${item_description}

Get unit price
    ${unit_price}=       Get Value      id:pre-item-description-report-0-0
    Log To Console      ${unit_price}
    Set Suite Variable      ${unit_price}

Get remark report
    ${remark_report}=       Get Value      id:pre-remark-report-0
    Log To Console      ${remark_report}
    Set Suite Variable      ${remark_report}

Get discount report
    ${discount_report}=       Get Value      id:pre-sub-total-discount-report-0
    Log To Console      ${discount_report}
    Set Suite Variable      ${discount_report}

Get tax amount report
    ${tax_amount_report}=       Get Value      id:pre-tax-amount-report-0-
    Log To Console      ${tax_amount_report}
    Set Suite Variable      ${tax_amount_report}

Get payment total report
    ${payment_total}=       Get Value      id:pre-payment-total-th-report-0
    Log To Console      ${payment_total}
    Set Suite Variable      ${payment_total}

Get sub payment report
    ${sub_payment}=       Get Value      id:pre-sum-payment-total-report-0
    Log To Console      ${sub_payment}
    Set Suite Variable      ${sub_payment}

Run Python1 Access Token
    ${result1}  =   Run Process     /Users/USER1/.jenkins/workspace/DGL/Resource/pyapi.py






















