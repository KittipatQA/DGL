*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Resource             ${Path_Environment}/Resource/dglforsme.resource
Resource             ${Path_Environment}/Page/home_page.resource
Resource             ${Path_Environment}/Page/oe_page.resource
Resource             ${Path_Environment}/Page/login_page.resource   
Resource             ${Path_Environment}/Logic/TS_OE_Sr_0.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Teardown        Run Keyword If Test Failed     Capture Screen
Test Template        Oe Check Search 0
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
16ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_ค้นหารายละเอียดรายการที่ไม่มีในระบบ   tester@gmail.com   123123   OE Page Search   เครื่องบิน