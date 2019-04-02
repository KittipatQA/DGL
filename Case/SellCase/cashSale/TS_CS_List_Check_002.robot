*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Resource             ${CURDIR}/../../../Resource/dglforsme.resource
Resource             ${CURDIR}/../../../Page/home_page.resource
Resource             ${CURDIR}/../../../Page/cs_page.resource
Resource             ${CURDIR}/../../../Page/login_page.resource   
Resource             ${CURDIR}/../../../Logic/TS_CS_Lis_2.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Teardown        Run Keyword If Test Failed     Capture Screen
Test Template        CS Check Result 2
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
4ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_เลือก_Checkbox_ชำระแล้ว_เลือก_Checkbox_ค้างชำระ_เลือก_Checkbox_ยกเลิกรายการ   tester@gmail.com   123123   OI Page Search      รับชำระแล้ว     ค้างชำระ    ยกเลิกรายการ