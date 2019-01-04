*** Settings ***
Library              SeleniumLibrary

*** Variables ***
${api_precompanyname} =  ${name}
${api_commapy_address} =    ที่อยู่  เลขที่ ${address_no}  ห้อง ${address_room}  ชั้น ${address_floorNo} อาคาร ${address_building}  หมู่ ${address_homeGroup}  ตรอก/ซอย ${address_soi}  ถนน ${address_road}  ${address_subDistrict} ${address_district} ${address_province} ${address_postcode} 

*** Keywords ***

Click radio circle
    Click Element       xpath:(//div[@class="mat-radio-label-content"])[2]

Select Journal List
    [Arguments]     
    Click Element       xpath://*[@id="sl-oe-detail-1"]/div[1]

Click Btn Print
    Click Button       id:btn-oe-preview

Get precompany name
    ${precompany_name}=       Get Text      id:pre-company-name-doc-0
    Log To Console      ${precompany_name}
    Set Suite Variable      ${precompany_name}

Get company addressConcat
    ${company_addressConcat}=       Get Text      id:pre-company-addressConcat-doc-0
    Log To Console      ${company_addressConcat}
    Set Suite Variable      ${company_addressConcat}

Get taxIdentification
    ${company_taxIdentification}=       Get Text      id:pre-company-taxIdentification-doc-0
    Log To Console      ${company_taxIdentification}
    Set Suite Variable      ${company_taxIdentification}

Get branch
    ${branch}=       Get Text      id:pre-company-branch-no-doc-0
    Log To Console      ${branch}
    Set Suite Variable      ${branch}

Get description
    ${description}=       Get Text      id:pre-description-report-0
    Log To Console      ${description}
    Set Suite Variable      ${description}

Get receipt no
    ${receipt_no}=       Get Text      id:pre-receipt-no-report
    Log To Console      ${receipt_no}
    Set Suite Variable      ${receipt_no}

Get bill no
    ${bill_no}=       Get Text      id:pre-bill-no-report-0
    Log To Console      ${bill_no}
    Set Suite Variable      ${bill_no}

Get bill date
    ${bill date}=       Get Text      id:pre-bill-date-report-0
    Log To Console      ${bill date}
    Set Suite Variable      ${bill date}

Get name report
    ${name_report}=       Get Text      id:pre-account-payable-info-name-report-0
    Log To Console      ${name_report}
    Set Suite Variable      ${name_report}

Get item description
    ${item_description}=       Get Text      id:pre-item-description-report-0-0
    Log To Console      ${item_description}
    Set Suite Variable      ${item_description}

Get unit price
    ${unit_price}=       Get Text      id:pre-item-description-report-0-0
    Log To Console      ${unit_price}
    Set Suite Variable      ${unit_price}

Get remark report
    ${remark_report}=       Get Text      id:pre-remark-report-0
    Log To Console      ${remark_report}
    Set Suite Variable      ${remark_report}

Get discount report
    ${discount_report}=       Get Text      id:pre-sub-total-discount-report-0
    Log To Console      ${discount_report}
    Set Suite Variable      ${discount_report}

Get tax amount report
    ${tax_amount_report}=       Get Text      id:pre-tax-amount-report-0-
    Log To Console      ${tax_amount_report}
    Set Suite Variable      ${tax_amount_report}

Get payment total report
    ${payment_total}=       Get Text      id:pre-payment-total-th-report-0
    Log To Console      ${payment_total}
    Set Suite Variable      ${payment_total}

Get sub payment report
    ${sub_payment}=       Get Text      id:pre-sum-payment-total-report-0
    Log To Console      ${sub_payment}
    Set Suite Variable      ${sub_payment}

Run Python1 Access Token
    Run Process     python      /Users/USER1/.jenkins/workspace/DGL/Resource/pyapi.py

Run Python2 id from list
    Run Process     python      /Users/USER1/.jenkins/workspace/DGL/Resource/pyapi2.py

Run Python3 Get Value 
    Run Process     python      /Users/USER1/.jenkins/workspace/DGL/Resource/pyapi3.py

Check api precompanyname
    Get precompany name     
    Should Be Equal As Strings      ${precompany_name}     ${name} 





















