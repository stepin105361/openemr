*** Settings ***
   
Resource    ../Resources/common_functionality.resource
Resource    ../Resources/Pages/LoginPage.resource
Resource    ../Resources/Pages/DashboardPage.resource
Resource    ../Resources/Pages/PatientFinderPage.resource
Resource    ../Resources/Pages/SearchOrAddPatient.resource

Test Setup    Launch Browser
Test Teardown    End Browser

*** Test Cases ***
TC1_ValidCredential
    MouseOver On Patient
    
    Click Patient
    
    Switch to Fin Frame
    
    Create New Patient
    
    Switch Out Frame
    
    Switch to Pat Frame
    
    Input First Name    Paul
    
    Input Last Name    Walker

    Input DOB    2021-01-16
    
    Select Gender    Male
    
    Add Patient
    
    Switch Out of Pat Frame
    
    Switch To Modal Frame
    
    Confirm Create Patient
    
    Switch Out of Modal Frame
    
    