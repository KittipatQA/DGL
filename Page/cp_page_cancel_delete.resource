*** Settings ***
Library              SeleniumLibrary

*** Variables ***
${table}       xpath:(//thead[@class="mat-calendar-table-header"])
${next}     xpath:(//button[@class="mat-calendar-next-button mat-icon-button"])
${previous}     xpath:(//button[@class="mat-calendar-previous-button mat-icon-button"])

*** Keywords ***

Click Btn cancel
    Click Element       id:btn-oe-void

Click Btn confirm cancel and delete
    Click Element        xpath://*[@id="btn-modal-cancel"]
    Click Element        xpath://*[@id="container"]/div/div[3]/div/button

Click Btn delete
    Click Element        xpath://*[@id="btn-oe-delete"]

Click last list
    Click Element       xpath://*[@id="sl-cp-detail-0"]

Check Status After cancel
    ${status_list}=   Get Text     //*[@id="sl-cp-detail-0"]/div[6]
    Set Suite Variable      ${status_list}

Check Status Cancel
    [Arguments]     ${status_cancel}
    Should Be Equal As Strings      ${status_list}      ${status_cancel} 



