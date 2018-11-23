*** Settings ***
Library              SeleniumLibrary
Resource             /Users/USER1/.jenkins/workspace/DGL-For-SME/Resource/dglforsme.resource
Resource             /Users/USER1/.jenkins/workspace/DGL-For-SME/Page/login_page.resource
Resource             /Users/USER1/.jenkins/workspace/DGL-For-SME/Logic/login_pass.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Template        Log In Pass Validate
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Test Cases ***

8ตรวจสอบการเข้าสู่ระบบ_กรณี_Email_Password_ถูกต้อง   test@gmail.com   123123   Dharmniti Genaral Ledger   Login Case
