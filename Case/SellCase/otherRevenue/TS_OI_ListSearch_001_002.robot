﻿*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Resource             /Users/USER1/.jenkins/workspace/DGL/Resource/dglforsme.resource
Resource             ${Path_Environment}/Page/home_page.resource
Resource             ${Path_Environment}/Page/oe_page.resource
Resource             ${Path_Environment}/Page/login_page.resource   
Resource             ${Path_Environment}/Logic/TS_OI_LSr_1.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Teardown        Run Keyword If Test Failed     Capture Screen
Test Template        OI Check List Search 1
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
21ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_เลือก_Checkbox_ค้างชำระ_ระบุรายการที่มีสถานะ_ช้างชำระ_ในระบบ   tester@gmail.com   123123   OE Page Search   no   yes   no   ค้างชำระ   บริษัท ดีแทค ไตรเน็ต จำกัด
