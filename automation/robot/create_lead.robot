*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     https://login.salesforce.com
${USER}    your_username
${PASSWORD}    your_password

*** Test Cases ***
Create New Lead
    Open Browser    ${URL}    chrome
    Input Text    id=username    ${USER}
    Input Text    id=password    ${PASSWORD}
    Click Button    id=Login
    Wait Until Page Contains    Home

