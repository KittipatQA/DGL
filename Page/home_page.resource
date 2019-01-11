*** Settings ***
Library              SeleniumLibrary

*** Variables ***

*** Keywords ***

Click Tab Buy
    Click Element    xpath://nb-menu//a[@title="ซื้อ"]

Click Tab OtherExpense
    Click Element    xpath:/html/body/app-root/app-home-layout/app-layout/nb-layout/div/div/div/nb-sidebar/div/div/nb-menu/ul/li[2]/ul/li[2]/a
