*** Settings ***
Library              SeleniumLibrary

*** Variables ***
${buy}      //span[.//text() = 'ชื้อเงินสด']
${save_other_buy_list}      //span[.//text() = 'บันทึกรายจ่ายอื่นๆ']


*** Keywords ***

Click Tab Buy
    Sleep       10s
    Element Should Be Visible           ${buy}
    Click Element       ${buy}
    Sleep       10s

Click Tab OtherExpense
    Sleep       10s
    Element Should Be Visible           ${save_other_buy_list}
    Click Element       ${save_other_buy_list}    
    Sleep       10s
