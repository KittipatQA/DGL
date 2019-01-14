*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Resource             ${Path_Environment}/Resource/TS_OE_Cancel_Delete_1_Hd.resource
Resource             ${Path_Environment}/Resource/dglforsme.resource
Resource             ${Path_Environment}/Page/home_page.resource
Resource             ${Path_Environment}/Page/oe_page_add.resource
Resource             ${Path_Environment}/Page/login_page.resource   
Resource             ${Path_Environment}/Logic/TS_OE_Cancel_1.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Template        Oe Cancel delete
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***