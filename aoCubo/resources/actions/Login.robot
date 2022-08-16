*** Settings ***
Documentation       Login AoCubo
Library             Collections
Library             OperatingSystem
Library             Browser
Resource            ../../utils/variables.robot


*** Keywords ***
Login With
    [Arguments]    ${email}        ${pass}
    Type Text      ${txtEmail}     ${email}
    Type Text      ${txtSenha}     ${pass}
    Click          ${btnEntrar}   
    
Take Screenshot And Continuos Sucess 
     #### Alterar para login sucesso
    Wait For Elements State        ${bntLoginSucess} >> text=Perfil
...    visible
...    5
    Take Screenshot
 
