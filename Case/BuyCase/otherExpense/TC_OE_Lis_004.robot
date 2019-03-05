*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Resource             ${CURDIR}/../../../Resource/dglforsme.resource
Resource             ${CURDIR}/../../../Page/home_page.resource
Resource             ${CURDIR}/../../../Page/oe_page.resource
Resource             ${CURDIR}/../../../Page/login_page.resource   
Resource             ${CURDIR}/../../../Logic/TS_OE_Lis_0.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Teardown        Run Keyword If Test Failed     Capture Screen
Test Template        Oe Check Result 0
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
9ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_ไม่เลือกสถานะเอกสาร   tester@gmail.com   123123   OE Page Search   no   no   no
10ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_ไม่เลือกสถานะเอกสาร   automate@gmail.com   123123   OE Page Search   no   no   no