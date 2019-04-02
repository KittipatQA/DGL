*** Settings ***
Library              SeleniumLibrary

*** Variables ***

*** Keywords ***

Click Cbx Paid 
    Select Checkbox     id:cbx-purchase-cash-received-input
    Checkbox Should Be Selected     name:received

Unclick Cbx Paid 
    Checkbox Should Be Selected     name:received
    Click Element       xpath://*[@id="cbx-purchase-cash-received"]/label/div
    Checkbox Should Not Be Selected     name:received

Click Cbx outstanding 
    Select Checkbox    id:cbx-purchase-cash-outstanding-input
    Checkbox Should Be Selected     name:outstanding

Unclick Cbx outstanding
    Checkbox Should Be Selected     name:outstanding
    Click Element      xpath://*[@id="cbx-purchase-cash-outstanding"]/label/div
    Checkbox Should Not Be Selected     name:outstanding

Click Cbx cancel 
    Select Checkbox    id:cbx-purchase-cash-void-input
    Checkbox Should Be Selected     name:void

Unclick Cbx cancel
    Checkbox Should Be Selected     name:void
    Click Element       xpath://*[@id="cbx-purchase-cash-void"]/label/div
    Checkbox Should Not Be Selected     name:void

Click Btn Search
    Click Button       id:btn-purchase-cash-search-keyword

Input Data Search 
    [Arguments]     ${data}
    Input Text      id:ipt-oe-txt     ${data}