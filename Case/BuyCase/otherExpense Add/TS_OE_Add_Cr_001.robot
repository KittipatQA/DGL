*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Resource             /DGL/Resource/dglforsme.resource
Resource             ${Path_Environment}/Page/home_page.resource
Resource             ${Path_Environment}/Page/oe_page_add.resource
Resource             ${Path_Environment}/Page/login_page.resource   
Resource             ${Path_Environment}/Logic/TS_OE_Add_Cr_1.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Template        Oe Add Data 1
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
1ตรวจสอบการเพิ่มรายการ_กรณี_นิติบุคคลมี_VATจ่ายเจ้าหนี้ไม่มี_VAT_รายการ_ไม่มี_TAX_   tester@gmail.com   123123   OE Add   D001   ไม่มี   29/11/2018   02/01/2019   IT   1455467879112   21/11/2018   11/61   ค่าใช้จ่ายล่าสุด   53-0001   1   6000   0   ไม่มี   จ่ายค่าโทรศัพท์   1000   ค้างชำระ
