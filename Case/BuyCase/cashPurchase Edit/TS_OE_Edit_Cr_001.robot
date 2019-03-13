*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Library              String
Library              ${CURDIR}/../../../Resource/calendar.py
Resource             ${CURDIR}/../../../Resource/dglforsme.resource
Resource             ${CURDIR}/../../../Page/home_page.resource
Resource             ${CURDIR}/../../../Page/cp_page_add.resource
Resource             ${CURDIR}/../../../Page/cp_page_edit.resource
Resource             ${CURDIR}/../../../Page/login_page.resource
Resource             ${CURDIR}/../../../Logic/TS_CP_Edit_Cr_1.resource
Resource             ${CURDIR}/../../../Resource/keywords.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Template        CP Edit Data 1
#Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
1ตรวจสอบการแก้ไขรายการ_โดยมีเงื่อนไขดังนี้_แก้ไขรหัสหรือชื่อผู้จัดจำหน่าย_ระบุข้อมูลทุก_Field   tester_2@gmail.com   123123   OE Add   D001   ไม่มี   29/11/2018   02/01/2019   IT   1455467879112   21/11/2018   11/61   ไม้กอล์ฟ   SKU1903-0001   1   6000   0   ไม่มี   จ่ายค่าโทรศัพท์   1000   ค้างชำระ
