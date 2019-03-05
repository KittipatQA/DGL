*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Resource             ${CURDIR}/../../../Resource/dglforsme.resource
Resource             ${CURDIR}/../../../Page/home_page.resource
Resource             ${CURDIR}/../../../Page/oe_page.resource
Resource             ${CURDIR}/../../../Page/login_page.resource   
Resource             ${CURDIR}/../../../Logic/TS_OI_Sr_3.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Teardown        Run Keyword If Test Failed     Capture Screen
Test Template        OI Check Search 3
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
13ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_ค้นหารายละเอียดรายการที่มีในระบบ   tester@gmail.com   123123   OE Page Search   ค่าสินค้าเดือน มค