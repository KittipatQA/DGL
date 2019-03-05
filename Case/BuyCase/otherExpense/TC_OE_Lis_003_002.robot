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
8ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_เลือก_Checkbox_ชำระแล้ว_เลือก_Checkbox_ยกเลิกรายการ   automate@gmail.com   123123   OE Page Search   yes   no   yes