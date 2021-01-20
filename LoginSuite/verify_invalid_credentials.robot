*** Settings ***
   
Resource    ../Resources/common_functionality.resource
Resource    ../Resources/Pages/LoginPage.resource
Resource    ../Resources/Pages/DashboardPage.resource

Test Setup    Launch Browser
Test Teardown    End Browser

Test Template    Verify_Invalid_Credentials

*** Test Cases ***
TC1    admin123    pass    English (Indian)    Flow Board   
TC2    accountant123    accountant    English (Indian)    Flow Board
TC3    physician123    physician    English (Indian)    Flow Board
    
*** Keywords ***
Verify_Invalid_Credentials
    [Arguments]    ${username}    ${password}    ${language}    ${expectedvalue}

    Enter Username    ${username}    
    Enter Password    ${password}    
    Select Language    ${language}
    Click Login   
    #Verify Error Message    ${expectedvalue}