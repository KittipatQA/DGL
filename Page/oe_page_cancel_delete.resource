*** Settings ***
Library              SeleniumLibrary

*** Variables ***

*** Keywords ***

Click Btn cancel
    Click Button       id:btn-oe-void

Click Btn confirm cancel and delete
    Click Button        id:btn-modal-cancel

Click Btn delete
    Click Button        id:btn-oe-delete

Click last list
    Click Element       id:sl-oe-detail-0

Check Status After cancel
    ${status_list}=   Get Text     //*[@id="sl-oe-detail-0"]/div[7]/label
    Set Suite Variable      ${status_list}




