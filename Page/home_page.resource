*** Settings ***
Library              SeleniumLibrary

*** Variables ***

*** Keywords ***

Click Tab Buy
    Click Element       //span[.//text() = 'ชื้อเงินสด']

Click Tab OtherExpense
    Click Element       //span[.//text() = 'บันทึกรายจ่ายอื่นๆ']
