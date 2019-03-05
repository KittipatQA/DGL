*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Resource             ${CURDIR}/../../../Resource/dglforsme.resource
Resource             ${CURDIR}/../../../Page/home_page.resource
Resource             ${CURDIR}/../../../Page/oe_page.resource
Resource             ${CURDIR}/../../../Page/login_page.resource   
Resource             ${CURDIR}/../../../Logic/TS_OE_Sr_0.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Teardown        Run Keyword If Test Failed     Capture Screen
Test Template        Oe Check Search 0
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
15ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_ค้นหาผู้จัดจำหน่ายที่ไม่มีในระบบ   tester@gmail.com   123123   OE Page Search   บมจ.เฮงเฮงเฮง