*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Library              String
Resource             /Users/USER1/.jenkins/workspace/DGL/Resource/dglforsme.resource
Resource             /Users/USER1/.jenkins/workspace/DGL/Page/home_page.resource
Resource             /Users/USER1/.jenkins/workspace/DGL/Page/oe_page_add.resource
Resource             /Users/USER1/.jenkins/workspace/DGL/Page/login_page.resource   
Resource             /Users/USER1/.jenkins/workspace/DGL/Logic/TS_OE_Edit_Cr_1.resource
Resource             /Users/USER1/.jenkins/workspace/DGL/Resource/keywords.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Template        Oe Edit Data 1
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
2ตรวจสอบการเพิ่มรายการ_กรณี_นิติบุคคลมี_VATจ่ายเจ้าหนี้ไม่มี_VAT_รายการมี_TAX(2%)_   tester_2@gmail.com   123123   แก้ไขรายการ   E001   รวมภาษีมูลค่าเพิ่ม   09/01/2019      29/11/2018   12/61   ชำระค่าเคเบิลทรู   ค่าอินเตอร์เน็ต   1   8000   100   2%   จ่ายค่าอินเตอร์เน็ต   7900   ชำระแล้ว
