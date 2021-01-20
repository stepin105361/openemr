*** Settings ***

Library    DataDriver    file=../TestData/OpenEmrData.xlsx    sheet_name=Verify_Valid_Credentials
   
Resource    ../Resources/common_functionality.resource
Resource    ../Resources/Pages/LoginPage.resource
Resource    ../Resources/Pages/DashboardPage.resource

Test Setup    Launch Browser
Test Teardown    End Browser

Test Template    Verify_Valid_Credentials

*** Test Cases ***
TC1
    
*** Keywords ***
Verify_Valid_Credentials
    [Arguments]    ${username}    ${password}    ${language}    ${expectedvalue}

    Enter Username    ${username}    
    Enter Password    ${password}    
    Select Language    ${language}
    Click Login 
    
    Dashboard Page Should Contain    ${expectedvalue}  
    MouseOver On Name
    Click Logout 