*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Resource             /Users/USER1/.jenkins/workspace/DGL/Resource/TS_OE_Cancel_Delete_1_Hd.resource
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