*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Library              String
Library              ${CURDIR}/../../../Resource/easy_math.py
Library              ${CURDIR}/../../../Resource/calendar.py
Resource             ${CURDIR}/../../../Resource/dglforsme.resource
Resource             ${CURDIR}/../../../Page/home_page.resource
Resource             ${CURDIR}/../../../Page/oe_page_add.resource
Resource             ${CURDIR}/../../../Page/login_page.resource
Resource             ${CURDIR}/../../../Logic/TS_OE_Add_Cr_2.resource
Resource             ${CURDIR}/../../../Resource/keywords.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Template        Oe Add Data 2
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
2ตรวจสอบการเพิ่มรายการ_กรณี_นิติบุคคลมี_VATจ่ายเจ้าหนี้ไม่มี_VAT_รายการมี_TAX(2%)_   tester_2@gmail.com   123123   เพิ่มรายการค่าใช้จ่ายเคสสอง   D001   รวมภาษีมูลค่าเพิ่ม   29/11/2018      21/11/2018   11/61   ค่าใช้จ่ายล่าสุด   ค่าโทรศัพท์   1   6000   500   2%   จ่ายค่าโทรศัพท์   1000   ค้างชำระ
