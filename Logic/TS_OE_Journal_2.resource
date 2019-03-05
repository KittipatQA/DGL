*** Settings ***
Library              SeleniumLibrary
Resource             ${CURDIR}/../Resource/dglforsme.resource

*** Variables ***

*** Keywords ***

Oe Journal 2
      [Arguments]            ${username}      ${password}       ${image_name}                  
      Set Selenium Speed     0.6
      Set Directory          ${image_name}
      Capture Screen
      Input User             ${username}
      Input Password         ${password}
      Capture Screen
      Login Submit                 
      Wait Until Element Is Visible           ${logic}
      Capture Screen
      Click Tab Buy
      Capture Screen
      Click Tab OtherExpense
      Select Journal List
      Click Btn Print
      Click radio circle
      Check api precompanyname
      Check api company addressConcat
      Check api taxidentification
      Check api receipt no
      Check api description
      Check api bill no
      Check api remark
      Check api payment total
      Check api itemdescription
      Check api qty unit price
      Check api discount
      Check api subTotalPriceVatExempt
      Check api subTotalPriceBeforeVat
      Check api subTotalPriceBeforeVat
      Check api totalPrice
      Check api transaction date
      Check api bill date
      Check api vat amount