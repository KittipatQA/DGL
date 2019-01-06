*** Settings ***
Library              SeleniumLibrary
Library              Process
Library              BuiltIn
Variables            /Users/USER1/.jenkins/workspace/DGL/Resource/pyapi3.py
Resource             /Users/USER1/.jenkins/workspace/DGL/Resource/dglforsme.resource
Resource             /Users/USER1/.jenkins/workspace/DGL/Page/home_page.resource
Resource             /Users/USER1/.jenkins/workspace/DGL/Page/oe_page_journal.resource
Resource             /Users/USER1/.jenkins/workspace/DGL/Page/login_page.resource   
Resource             /Users/USER1/.jenkins/workspace/DGL/Logic/TS_OE_Journal_2.resource
Suite Setup          Open the web page
Suite Setup          Run Python1 Access Token
Suite Setup          Run Python2 id from list
Suite Setup          Run Python3 Get Value 
Test Setup           Go to login page
Test Template        Oe Journal 2
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
1ตรวจสอบการ_พิมพ์เอกสาร_กรณี_ทำการเลือก_ใบสำคัญจ่าย_OE_สถานะเอกสาร_ชำระแล้ว     tester@gmail.com      123123        พิมพ์เอกสาร        
