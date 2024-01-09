*** Settings ***
Documentation    Switching between Browser Windows in Robot Framework
Library     SeleniumLibrary

*** Variables ***

${BROWSER}      edge
${URL}          https://www.saucedemo.com/
${Timeout}      10s


${User}         id:user-name
${Password}     id:password  

${Input_User}        standard_user
${Input_Password}    secret_sauce
${Input_UserLock}    locked_out_user


${firstName}             id:first-name
${lastName}              id:last-name
${postalCode}            postal-code

${Input_FirstName}       Natthamon
${Input_lastName}        Beer
${Input_postalCode}      11000/thailand

${Login}                 id:login-button
${Open_Menu}             //button[@id="react-burger-menu-btn"]
${About}                 //a[@id="about_sidebar_link"]
${Logout}                //a[@id="logout_sidebar_link"]
${shopping_cart}         //a[@class="shopping_cart_link"]
${continue-shopping}     id:continue-shopping
${checkout}              id:checkout
${continue}              id:continue
${finish}                id:finish
${back_home}             id:back-to-products

${Sort_product}      //*[@id="header_container"]/div[2]/div/span/select    
@{FilterProducts}=    az    za    lohi    hilo




${twitter}          //a[normalize-space()="Twitter"]
${facebook}         //a[normalize-space()="Facebook"]
${linkedin}         //a[normalize-space()="LinkedIn"]

${Product_Onesie}                 id:add-to-cart-sauce-labs-onesie
${Product_T-Shirt(Red)}           id:add-to-cart-test.allthethings()-t-shirt-(red)

${Remove_Product_onesie}          id:remove-sauce-labs-onesie
${Remove_Product_t-shirt-(red)}   id:remove-test.allthethings()-t-shirt-(red)



${Product_Backpack}             id:add-to-cart-sauce-labs-backpack
${Product_Bolt T-Shirt}         id:add-to-cart-sauce-labs-bolt-t-shirt
${Product_Jacket}               id:add-to-cart-sauce-labs-fleece-jacket     


