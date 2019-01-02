*** Settings ***
Library              SeleniumLibrary
Resource             /Users/USER1/.jenkins/workspace/DGL/Resource/dglforsme.resource

*** Variables ***

*** Keywords ***

Oe Journal 2
      [Arguments]            ${username}      ${password}       ${image_name}       ${number}                    
      Set Suite Variable       ${logic}       Dharmniti Genaral Ledger
      Set Selenium Speed     0.3
      Set Directory          ${image_name}
      Capture Screen
      Input User             ${username}
      Input Password         ${password}
      Capture Screen
      Login Submit                 
      Wait Until Page Contains        ${logic}   
      Capture Screen
      Click Tab Buy
      Capture Screen
      Click Tab OtherExpense
      Select Journal List           ${number}

      
     