*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Resource             /Users/USER1/.jenkins/workspace/DGL/Page/oe_page_cancel_delete.resource
Resource             /Users/USER1/.jenkins/workspace/DGL/Resource/dglforsme.resource
Resource             /Users/USER1/.jenkins/workspace/DGL/Page/home_page.resource
Resource             /Users/USER1/.jenkins/workspace/DGL/Page/oe_page_add.resource
Resource             /Users/USER1/.jenkins/workspace/DGL/Page/login_page.resource   
Resource             /Users/USER1/.jenkins/workspace/DGL/Logic/TS_OE_Cancel_1.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Template        Oe Cancel delete
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
1ตรวจสอบการยกเลิกรายการ   tester@gmail.com   123123   OE Add   D001   ไม่มี   29/11/2018   02/03/2019   IT   1455467879112   21/11/2018   11/61   ค่าใช้จ่ายล่าสุด   53-0001   1   6000   0   ไม่มี   จ่ายค่าโทรศัพท์   1000   ค้างชำระ   ยกเลิก