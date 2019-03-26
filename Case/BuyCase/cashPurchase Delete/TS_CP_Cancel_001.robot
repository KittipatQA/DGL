*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Library              ${CURDIR}/../../../Resource/calendar.py
Resource             ${CURDIR}/../../../Page/cp_page_cancel_delete.resource
Resource             ${CURDIR}/../../../Resource/dglforsme.resource
Resource             ${CURDIR}/../../../Page/home_page.resource
Resource             ${CURDIR}/../../../Page/cp_page_add.resource
Resource             ${CURDIR}/../../../Page/login_page.resource   
Resource             ${CURDIR}/../../../Logic/TS_CP_Cancel_1.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Template        CP Cancel delete
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
1ตรวจสอบการเพิ่มรายการ_กรณี_นิติบุคคลมี_VATจ่ายเจ้าหนี้ไม่มี_VAT_รายการ_ไม่มี_TAX_   tester_2@gmail.com   123123   OE Add   D001   ไม่มี   29/11/2018   02/01/2019   IT   1455467879112   21/11/2018   11/61   ไม้กอล์ฟ   SKU1903-0002   1   6000   0   ไม่มี   จ่ายค่าโทรศัพท์   1000   ค้างชำระ       ยกเลิกรายการ