*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Library              String
Resource             ${CURDIR}/../../../Resource/dglforsme.resource
Resource             ${CURDIR}/../../../Page/home_page.resource
Resource             ${CURDIR}/../../../Page/oi_page_add.resource
Resource             ${CURDIR}/../../../Page/login_page.resource   
Resource             ${CURDIR}/../../../Logic/TS_OI_Add_Cr_2.resource
Resource             ${CURDIR}/../../../Resource/keywords.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Template        OI Add Data 2
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
1ตรวจสอบการเพิ่มรายการ_กรณี_นิติบุคคลมี_VATจ่ายเจ้าหนี้ไม่มี_VAT_รายการ_ไม่มี_TAX_      tester_2@gmail.com        123123      OI Add      D001      29/11/2018      4100-22        ค่าใช้จ่ายล่าสุด      1        6000        100       1000        ค้างชำระ
