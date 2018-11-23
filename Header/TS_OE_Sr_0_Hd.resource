*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Resource             /Users/USER1/.jenkins/workspace/DGL-For-SME/Resource/dglforsme.resource
Resource             /Users/USER1/.jenkins/workspace/DGL-For-SME/Page/home_page.resource
Resource             /Users/USER1/.jenkins/workspace/DGL-For-SME/Page/oe_page.resource
Resource             /Users/USER1/.jenkins/workspace/DGL-For-SME/Page/login_page.resource   
Resource             /Users/USER1/.jenkins/workspace/DGL-For-SME/Logic/TS_OE_Sr_0.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Template        Oe Check Search 0
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***