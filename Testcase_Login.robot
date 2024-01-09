*** Settings ***
Library     SeleniumLibrary
Resource    Variables.robot
Resource    Keyword.robot


*** Test Cases ***
Testcases : login Valid
    GoToWeb
    Input Text            ${User}        ${Input_User}
    Input Password        ${Password}    ${Input_Password}
    Click Button          ${Login}
    Page Should Contain   Swag Labs   
    Sleep    5s 
    Scroll Element Into View    //*[@id="page_wrapper"]/footer/div
    Sleep    5s
    Scroll Element Into View    ${Open_Menu}
    Logout

Testcases : login InValid (Userlock)
    GoToWeb
    Input Text            ${User}        ${Input_UserLock}
    Input Password        ${Password}    ${Input_Password}   
    Click Button          ${Login}
    Page Should Contain   Epic sadface: Sorry, this user has been locked out.
    Sleep    5s

Testcases : login InValid 
    GoToWeb
    Input Text            ${User}        admin
    Input Password        ${Password}    12345
    Click Button          ${Login}
    Sleep    5s
    Page Should Contain   Epic sadface: Username and password do not match any user in this service
    Sleep    5s    