*** Settings ***
Documentation    This file deals with all operations patient addition to records

Resource    ../common_functionality.resource

*** Variables ***
${PAT_LOCATOR}    Pat
${FIRSTNAME_LOC}    form_fname
${LASTNAME_LOC}    form_lname
${DOB_LOC}    form_DOB
${GENDER_LOC}    form_sex
${CREATE_LOC}    create
${MODAL_LOC}    modalframe
${CONFIRM_LOC}    xpath=//input[@value="Confirm Create New Patient"]
${ALERT_LOC}    xpath=//div[@class="closeDigiframe"]

*** Keywords ***

Switch to Pat Frame
    Select Frame    ${PAT_LOCATOR}

Input First Name
    [Arguments]    ${fname}
    Input Text    ${FIRSTNAME_LOC}    ${fname}    

Input Last Name
    [Arguments]    ${lname}
    Input Text    ${LASTNAME_LOC}    ${lname}
    
Input DOB
    [Arguments]    ${dob}
    Input Text    ${DOB_LOC}    ${dob}    

Select Gender
    [Arguments]    ${gen}
    Select From List By Label    ${GENDER_LOC}    ${gen}
    
Add Patient
    Click Element    ${CREATE_LOC}    
    
Switch Out of Pat Frame
    Unselect Frame
    
Switch To Modal Frame
    Select Frame    ${MODAL_LOC}
    
Confirm Create Patient
    Click Element    ${CONFIRM_LOC}    

Switch Out of Modal Frame
    Unselect Frame
    
Handle Alert Message
    Click Element    ${ALERT_LOC}    

