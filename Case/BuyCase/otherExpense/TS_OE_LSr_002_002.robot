*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Resource             ${CURDIR}/../../../Resource/dglforsme.resource
Resource             ${CURDIR}/../../../Page/home_page.resource
Resource             ${CURDIR}/../../../Page/oe_page.resource
Resource             ${CURDIR}/../../../Page/login_page.resource   
Resource             ${CURDIR}/../../../Logic/TS_OE_LSr_0.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Teardown        Run Keyword If Test Failed     Capture Screen
Test Template        Oe Check List Search 0
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***

25ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_เลือก_Checkbox_ชำระแล้ว_ไม่ระบุรายการ   automate@gmail.com   123123   OE Page Search   yes   no   no   ${EMPTY}
27ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_ไม่เลือก_Checkbox_ไม่ระบุรายการ   automate@gmail.com   123123   OE Page Search   no   no   no   ${EMPTY}