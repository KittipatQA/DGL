*** Settings ***
Library              SeleniumLibrary

*** Variables ***

*** Keywords ***

Click last list
    Click Element       xpath://*[@id="sl-oe-detail-0"]/div[1]

Clear Supplier Code
    Clear Element Text      id:input-oe-detail-code

Clear Supplier Name
    Clear Element Text      id:input-oe-detail-name

Clear billNo
    Clear Element Text      id:input-oe-detail-billNo