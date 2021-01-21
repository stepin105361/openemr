*** Settings ***
Documentation    This file deals with all operations in the dashboard page

Resource    ../common_functionality.resource

*** Variables ***
${NAME_LOC}    //span[@data-bind="template: {name: 'user-data-template', data: application_data}"]
${LOGOUT_LOC}    //li[text()='Logout']
${PAT_LOC}    //div[text()='Patient/Client']
${PATS_LOC}    //div[text()='Patients']

*** Keywords ***

Dashboard Page Should Contain
    [Arguments]    ${pagetext}
    Page Should Contain    ${pagetext}    

MouseOver On Name
    Mouse Over    ${NAME_LOC}

MouseOver On Patient
    Mouse Over    ${PAT_LOC}

Click Patient
    Click Element    ${PATS_LOC}    

Click Logout
    Click Element    ${LOGOUT_LOC}    
    