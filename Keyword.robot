*** Settings ***
Documentation    Switching between Browser Windows in Robot Framework
Library     SeleniumLibrary
Resource    Variables.robot

*** Keywords ***
GoToWeb
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window
    
Login
    GoToWeb
    Input Text            ${User}        ${Input_User}
    Input Password        ${Password}    ${Input_Password}
    Click Button          ${Login}
    Page Should Contain   Swag Labs   

Logout
    Click Element        ${Open_Menu}
    Sleep    5s
    Click Element        ${Logout} 
    Sleep    5s