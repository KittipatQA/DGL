*** Settings ***
Library              SeleniumLibrary

*** Variables ***

*** Keywords ***

Click Tab Buy
    Click Element    xpath://nb-menu//a[@title="ซื้อ"]

Click Tab OtherExpense
    Click Element    xpath://nb-menu//a[@title="บันทึกรายจ่ายอื่นๆ"]
