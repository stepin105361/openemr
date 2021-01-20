***Settings***
Documentation    Handle operation related to patient finder
...    
...    

Resource    ../common_functionality.resource

***Variables***
${FIN_LOCATOR}    fin
${ADD_NEW_PATIENT_LOCATOR}    id=create_patient_btn1
 
***kEYWORDS***
Switch to Fin Frame
    Select Frame    ${FIN_LOCATOR}

Create New Patient
    Click Element    ${ADD_NEW_PATIENT_LOCATOR}

Switch Out Frame
    Unselect Frame