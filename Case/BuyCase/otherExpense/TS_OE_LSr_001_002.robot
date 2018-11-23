﻿*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Resource             /Users/USER1/.jenkins/workspace/DGL/Resource/dglforsme.resource
Resource             /Users/USER1/.jenkins/workspace/DGL/Page/home_page.resource
Resource             /Users/USER1/.jenkins/workspace/DGL/Page/oe_page.resource
Resource             /Users/USER1/.jenkins/workspace/DGL/Page/login_page.resource   
Resource             /Users/USER1/.jenkins/workspace/DGL/Logic/TS_OE_LSr_0.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Template        Oe Check List Search 0
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
21ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_เลือก_Checkbox_ชำระแล้ว_ระบุรายการที่ไม่มีในระบบ   tester@gmail.com   123123   OE Page Search   yes   no   no   เครื่องบินโดยสาร
22ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_ไม่เลือก_Checkbox_ระบุรายการที่มีสถานะ_ชำระแล้ว_ในระบบ   tester@gmail.com   123123   OE Page Search   no   no   no   ค่าเช่า
23ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_ไม่เลือก_Checkbox_ระบุรายการที่ไม่มีในระบบ   tester@gmail.com   123123   OE Page Search   no   no   no   ค่าเช่า
