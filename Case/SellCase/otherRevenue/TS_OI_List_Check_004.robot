*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Library              String 
Resource             ${CURDIR}/../../../Resource/dglforsme.resource
Resource             ${CURDIR}/../../../Page/home_page.resource
Resource             ${CURDIR}/../../../Page/oe_page.resource
Resource             ${CURDIR}/../../../Page/login_page.resource   
Resource             ${CURDIR}/../../../Logic/TS_OI_Lis_3.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Teardown        Run Keyword If Test Failed     Capture Screen
Test Template        OI Check Result 0
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
6ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_ไม่เลือกสถานะเอกสาร   automate@gmail.com   123123   OE Page Search   yes   no   no