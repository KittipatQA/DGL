*** Settings ***
Library              SeleniumLibrary

*** Variables ***
${buy}      //span[.//text() = 'ชื้อเงินสด']
${save_other_buy_list}      //span[.//text() = 'บันทึกรายจ่ายอื่นๆ']


*** Keywords ***

Click Tab Buy
    Element Should Be Visible           ${buy}
    Click Element       ${buy}

Click Tab OtherExpense
    Element Should Be Visible           ${save_other_buy_list}
    Click Element       ${save_other_buy_list}    
