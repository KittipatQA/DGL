*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Resource             ${CURDIR}/../../../Resource/dglforsme.resource
Resource             ${CURDIR}/../../../Page/home_page.resource
Resource             ${CURDIR}/../../../Page/oe_page.resource
Resource             ${CURDIR}/../../../Page/login_page.resource   
Resource             ${CURDIR}/../../../Logic/TS_OI_LSr_1.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Teardown        Run Keyword If Test Failed     Capture Screen
Test Template        OI Check List Search 1
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
20ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_เลือก_Checkbox_ชำระแล้ว_ระบุรายการที่มีสถานะ_ชำระแล้ว_ในระบบ   tester@gmail.com   123123   OE Page Search   yes   no   no   ชำระแล้ว   ค่าสินค้าเดือน มค
