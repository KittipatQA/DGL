*** Settings ***
Library              SeleniumLibrary

*** Variables ***

*** Keywords ***

Click Btn cancel
    Click Element       id:btn-oe-void

Click Btn confirm cancel and delete
    Click Element        xpath://*[@id="btn-modal-cancel"]

Click Btn delete
    Click Element        xpath://*[@id="btn-oe-delete"]

Click last list
    Click Element       xpath://*[@id="sl-oe-detail-0"]

Check Status After cancel
    ${status_list}=   Get Text     //*[@id="sl-oe-detail-0"]/div[7]/label
    Set Suite Variable      ${status_list}




