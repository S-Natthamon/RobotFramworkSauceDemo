*** Settings ***
Documentation    Switching between Browser Windows in Robot Framework
Library    SeleniumLibrary
Resource    Variables.robot
Resource    Keyword.robot

*** Test Cases ***

TestCases_01 : Open Web Saucelabs
    GoToWeb
    Login
    Page Should Contain    Swag Labs 
    Click Button    ${Open_Menu}
    Wait Until Element Is Visible    ${About}    timeout=3
    Click Element   ${About}
    Sleep    3s

TestCases_02 : Filtering : Sort & Filter View Products
    GoToWeb
    Login
    Page Should Contain    Swag Labs 

    FOR    ${ViewProduct}    IN  @{FilterProducts}
        Click Element    ${Sort_product}
        Sleep   2s
        Select From List By Value     ${Sort_product}     ${ViewProduct}
        Sleep   3s
    END

TestCases_03 : Open Social Swag Labs 
    GoToWeb
    Login
    # Twitter
    Scroll Element Into View    //*[@id="page_wrapper"]/footer/div
    Sleep    5s
    Click Element    ${twitter}  
    Sleep    3s
    Switch Window    NEW
    Sleep    5s
    Switch Window    Swag Labs
    Sleep    5s
    # Faceboook
    Scroll Element Into View    //*[@id="page_wrapper"]/footer/div
    Sleep    5s
    Click Element    ${facebook}  
    Switch Window    Swag Labs
    # Switch Window    Sauce Labs | San Francisco CA
    Sleep    5s
    Switch Window    Swag Labs
    # Linkedin
    Scroll Element Into View    //*[@id="page_wrapper"]/footer/div
    Sleep    5s
    Click Element    ${linkedin}  
    Sleep    3s
    Switch Window    Swag Labs
    Switch Window    Sauce Labs | LinkedIn
    # Page Should Contain    Sauce Labs
    # Sleep  5s
    Switch Window    Swag Labs
    Sleep    5s

TestCases_04 : Remove Shopping of to Product
    GoToWeb
    Login
    Page Should Contain   Swag Labs 
    Sleep    5s
    Click Element    ${Product_Onesie} 
    Click Element    ${Product_T-Shirt(Red)} 
    Click Element    ${shopping_cart}
    Sleep    5s
    Click Element    ${Remove_Product_onesie}
    Click Element    ${Remove_Product_t-shirt-(red)}
    Sleep    5s
    Click Element    ${continue-shopping}
    Sleep    5s
    Wait Until Element Contains    //div[@class="app_logo"]    Swag Labs 

TestCases_05 : Shopping of to Product
    GoToWeb
    Login
    Scroll Element Into View    //*[@id="page_wrapper"]/footer/div
    Sleep    5s
    Click Element    ${Product_Backpack} 
    Click Element    ${Product_Bolt T-Shirt}
    Click Element    ${Product_Jacket}
    Click Element    ${shopping_cart}
    Click Element    ${checkout} 
    Input Text       ${firstName}         ${Input_FirstName}
    Input Text       ${lastName}          ${Input_lastName}
    Input Text       ${postalCode}        ${postalCode}
    Click Element    ${continue}
    Click Element    ${finish}
    Click Element    ${back_home}
    Page Should Contain    Swag Labs 
    Sleep    5s