﻿*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Resource             /Users/USER1/.jenkins/workspace/DGL/Resource/dglforsme.resource
Resource             /Users/USER1/.jenkins/workspace/DGL/Page/home_page.resource
Resource             /Users/USER1/.jenkins/workspace/DGL/Page/oe_page.resource
Resource             /Users/USER1/.jenkins/workspace/DGL/Page/login_page.resource   
Resource             /Users/USER1/.jenkins/workspace/DGL/Logic/TS_OE_Sr_2.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Template        Oe Check Search 2
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
12ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_ค้นหาผู้จัดจำหน่ายที่มีในระบบ   tester@gmail.com   123123   OE Page Search   บมจ.เซ็นทรัลพัฒนา