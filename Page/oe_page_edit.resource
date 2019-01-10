*** Settings ***
Library              SeleniumLibrary

*** Variables ***
${status_true}      สถานะถูกต้อง
${status_false}     สถานะไม่ถูกต้อง

*** Keywords ***

Click last list
    Click Element       xpath://*[@id="sl-oe-detail-0"]/div[1]