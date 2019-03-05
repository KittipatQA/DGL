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
17ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_ค้นหาเลขที่เอกสาร   automate@gmail.com   123123   OE Page Search   OE31102018-0000