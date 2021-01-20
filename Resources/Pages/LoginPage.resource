*** Settings ***
Documentation    This file will handle all the operation related to login page
    

Resource    ../common_functionality.resource

*** Variables ***
${USERNAME_LOC}    authUser
${PASSWORD_LOC}    clearPass
${LANGUAGE_LOC}    languageChoice
${LOGIN_LOC}    xpath=//button[@type='submit']
${TEXT_LOC}    //*[contains(text(),'Invalid')]

*** Keywords ***
Enter Username
    [Arguments]    ${username}
    Input Text    ${USERNAME_LOC}    ${username}

Enter Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_LOC}    ${password}    

Select Language
    [Arguments]    ${language}
    Select From List By Label    ${LANGUAGE_LOC}    ${language}
    
Click Login
    Click Element    ${LOGIN_LOC}

Verify Text
    [Arguments]    ${checktext}
    Element Should Contain    ${TEXT_LOC}    ${checktext}    
    
Verify Error Message
    