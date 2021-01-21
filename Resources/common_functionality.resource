*** Settings ***
Documentation    This file contains all the basic functionalities

Library    OperatingSystem        
Library    SeleniumLibrary    

*** Variables ***

${BROWSER_NAME}    ff
${URL}    https://demo.openemr.io/b/openemr/interface/login/login.php?site=default

*** Keywords ***
Launch Browser
    Append To Environment Variable    Path    ${OUTPUT_DIR}${/}driver
    Open Browser    browser=${BROWSER_NAME}
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=${URL}
    #wind
End Browser
    Close Browser
    #set sele