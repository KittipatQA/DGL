*** Settings ***
Library              SeleniumLibrary

*** Variables ***

*** Keywords ***

Click Tab Buy
    Click Element       xpath:(//span[@class="menu-title"])[2]

Click Tab OtherExpense
    Click Element       xpath:(//span[@class="menu-title"])[4]
