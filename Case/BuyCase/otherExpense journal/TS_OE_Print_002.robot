*** Settings ***
Library              SeleniumLibrary
Library              Process
Library              BuiltIn
Variables            ${Path_Environment}/Resource/pyapi3.py
Resource             /DGL/Resource/dglforsme.resource
Resource             ${Path_Environment}/Page/home_page.resource
Resource             ${Path_Environment}/Page/oe_page_journal.resource
Resource             ${Path_Environment}/Page/login_page.resource   
Resource             ${Path_Environment}/Logic/TS_OE_Journal_2.resource
Resource             ${Path_Environment}/Resource/keywords.resource
Library              ${Path_Environment}/Resource/converttime.py
Suite Setup          Open the web page
Test Setup           Go to login page
Test Template        Oe Journal 2
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
1ตรวจสอบการ_พิมพ์เอกสาร_กรณี_ทำการเลือก_ใบสำคัญจ่าย_OE_สถานะเอกสาร_ชำระแล้ว     tester@gmail.com      123123        พิมพ์เอกสาร        
