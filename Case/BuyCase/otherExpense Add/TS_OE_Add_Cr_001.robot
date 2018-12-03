*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Resource             /Users/USER1/.jenkins/workspace/DGL-For-SME/Resource/dglforsme.resource
Resource             /Users/USER1/.jenkins/workspace/DGL-For-SME/Page/home_page.resource
Resource             /Users/USER1/.jenkins/workspace/DGL-For-SME/Page/oe_page_add.resource
Resource             /Users/USER1/.jenkins/workspace/DGL-For-SME/Page/login_page.resource   
Resource             /Users/USER1/.jenkins/workspace/DGL-For-SME/Logic/TS_OE_Add_Cr_1.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Template        Oe Add Data 1
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
1ตรวจสอบการเพิ่มรายการ_กรณี_นิติบุคคลมี_VATจ่ายเจ้าหนี้ไม่มี_VAT_รายการ_ไม่มี_TAX_   tester@gmail.com   123123   OE Add   D001
