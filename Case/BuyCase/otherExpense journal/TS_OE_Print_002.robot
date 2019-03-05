*** Settings ***
Library              SeleniumLibrary
Library              Process
Library              BuiltIn
Variables            ${CURDIR}/../../../Resource/pyapi3.py
Resource             ${CURDIR}/../../../Resource/dglforsme.resource
Resource             ${CURDIR}/../../../Page/home_page.resource
Resource             ${CURDIR}/../../../Page/oe_page_journal.resource
Resource             ${CURDIR}/../../../Page/login_page.resource   
Resource             ${CURDIR}/../../../Logic/TS_OE_Journal_2.resource
Resource             ${CURDIR}/../../../Resource/keywords.resource
Library              ${CURDIR}/../../../Resource/converttime.py
Suite Setup          Open the web page
Test Setup           Go to login page
Test Template        Oe Journal 2
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
1ตรวจสอบการ_พิมพ์เอกสาร_กรณี_ทำการเลือก_ใบสำคัญจ่าย_OE_สถานะเอกสาร_ชำระแล้ว     tester@gmail.com      123123        พิมพ์เอกสาร        
