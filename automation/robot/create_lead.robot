*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser To Login Page
Suite Teardown    Close Browser

*** Variables ***
${URL}          https://login.salesforce.com
${BROWSER}      chrome
${USERNAME}     your_email@example.com
${PASSWORD}     your_password

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Login To Salesforce
    Input Text    id=username    ${USERNAME}
    Input Text    id=password    ${PASSWORD}
    Click Button    id=Login
    Sleep    3s

Create Lead
    Click Element    xpath=//div[@data-aura-class="forceNavPanel"]//button
    Sleep    1s
    Input Text    xpath=//input[@name="firstName"]    Test
    Input Text    xpath=//input[@name="lastName"]     Lead
    Input Text    xpath=//input[@name="Company"]       TestCompany
    Click Button    xpath=//button[@name="SaveEdit"]
    Sleep    3s

*** Test Cases ***
Salesforce Lead Creation
    Login To Salesforce
    Create Lead
    Capture Page Screenshot    ../screenshots/lead_created_robot.png
