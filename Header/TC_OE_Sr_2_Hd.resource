*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Resource             ${Path_Environment}/Resource/dglforsme.resource
Resource             ${Path_Environment}/Page/home_page.resource
Resource             ${Path_Environment}/Page/oe_page.resource
Resource             ${Path_Environment}/Page/login_page.resource   
Resource             ${Path_Environment}/Logic/TS_OE_Sr_2.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Template        Oe Check Search 2
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***