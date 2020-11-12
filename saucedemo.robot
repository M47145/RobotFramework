Library           SeleniumLibrary   run_on_failure=Nothing

*** Variables ***
${SERVER}         https://www.saucedemo.com/
${BROWSER}        Firefox
${DRIVER}         rf-env/WebDriverManager/geckodriver.exe
${DELAY}          0

*** Test Cases ***
TEST 
    Prepare Browser
    Login   standard_user   secret_sauce
    Add Products
    Open Shopping Cart
    Open Checkout
    Enter Checkout Info     Matti   Meikäläinen     80100
    Checkout Payment
    Verify Solved



*** Keywords ***

Prepare Browser
    Open Browser    ${SERVER}    ${BROWSER}   executable_path=${DRIVER}
    Set Selenium Speed    ${DELAY}

Login
    [Arguments]     ${username}     ${password}
    Wait Until Page Contains Element    id=user-name
    Input Text   id=user-name    ${username}
    Input Text   id=password     ${password}
    Click Element   id=login-button
    Wait Until Page Contains    Products

Add Products   
    Wait Until Page Contains Element    xpath=//div[@class='inventory_item' and contains(.,'jacket')]//button
    Click Element   xpath=//div[@class='inventory_item' and contains(.,'jacket')]//button


Open Shopping Cart
    Wait Until Page Contains Element    xpath=//span[@class='fa-layers-counter shopping_cart_badge']
    Click Element   xpath=//span[@class='fa-layers-counter shopping_cart_badge']

Open Checkout
    Wait Until Page Contains Element    xpath=//a[@class='btn_action checkout_button']
    Click Element   xpath=//a[@class='btn_action checkout_button']

Enter Checkout Info
    [Arguments]     ${firstname}     ${lastname}    ${zipcode}

    Wait Until Page Contains Element    id=first-name
    Input Text      id=first-name    ${firstname}
    Input Text      id=last-name    ${lastname}
    Input Text      id=postal-code   ${zipcode}
    
    Click Element   xpath=//input[@class='btn_primary cart_button']

Checkout Payment
    Wait Until Page Contains Element    xpath=//a[@class='btn_action cart_button']
    Click Element   xpath=//a[@class='btn_action cart_button']


Verify Solved
    Wait Until Page Contains Element    id=checkout_complete_container
