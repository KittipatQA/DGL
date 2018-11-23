*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Resource             /Users/USER1/.jenkins/workspace/DGL/Resource/dglforsme.resource
Resource             /Users/USER1/.jenkins/workspace/DGL/Page/home_page.resource
Resource             /Users/USER1/.jenkins/workspace/DGL/Page/oe_page.resource
Resource             /Users/USER1/.jenkins/workspace/DGL/Page/login_page.resource   
Resource             /Users/USER1/.jenkins/workspace/DGL/Logic/TS_OE_Lis_2.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Template        Oe Check Result 2
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
7ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_เลือก_Checkbox_ชำระแล้ว_เลือก_Checkbox_ยกเลิกรายการ   tester@gmail.com   123123   OE Page Search   yes   no   yes   ชำระแล้ว   ยกเลิกรายการ