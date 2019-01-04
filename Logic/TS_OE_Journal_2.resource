*** Settings ***
Library              SeleniumLibrary
Library              /Users/USER1/.jenkins/workspace/DGL/Resource/pyapi3.py
Resource             /Users/USER1/.jenkins/workspace/DGL/Resource/dglforsme.resource

*** Variables ***

*** Keywords ***

Oe Journal 2
      [Arguments]            ${username}      ${password}       ${image_name}                  
      Set Suite Variable       ${logic}       Dharmniti Genaral Ledger
      Set Selenium Speed     0.5
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
      Select Journal List
      Click Btn Print
      Click radio circle
      Run Python1 Access Token
      Run Python2 id from list
      Run Python3 Get Value
      Check api precompanyname

      
     