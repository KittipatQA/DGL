﻿*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Resource             /DGL/Resource/dglforsme.resource
Resource             ${Path_Environment}/Page/home_page.resource
Resource             ${Path_Environment}/Page/oe_page.resource
Resource             ${Path_Environment}/Page/login_page.resource   
Resource             ${Path_Environment}/Logic/TS_OE_LSr_1.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Teardown        Run Keyword If Test Failed     Capture Screen
Test Template        Oe Check List Search 1
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
20ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_เลือก_Checkbox_ชำระแล้ว_ระบุรายการที่มีสถานะ_ชำระแล้ว_ในระบบ   tester@gmail.com   123123   OE Page Search   yes   no   no   ชำระแล้ว   ค่าเช่า
