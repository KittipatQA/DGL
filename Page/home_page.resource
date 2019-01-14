*** Settings ***
Library              SeleniumLibrary

*** Variables ***
${buy}      xpath:(//span[@class="menu-title"])[2]
${save_other_buy_list}      xpath:(//span[@class="menu-title"])[4]


*** Keywords ***

Click Tab Buy
    Element Should Be Visible           ${buy}
    Click Element       ${buy}

Click Tab OtherExpense
    Element Should Be Visible           ${save_other_buy_list}
    Click Element       ${save_other_buy_list}    

