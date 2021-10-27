*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

create session
    [Arguments]    ${URL}
    open browser    ${URL}  chrome
    Maximize Browser Window

click
    [Arguments]    ${SELECTOR}
    Wait Until Page Contains Element    ${SELECTOR}
    click element   ${SELECTOR}
scroll
    Execute JavaScript    window.scrollTo(0,1000)

input
    [Arguments]    ${LOCATER}    ${TEXT}
    Clear Element Text    ${LOCATER}
    click element    ${LOCATER}
    input text    ${LOCATER}    ${TEXT}

clear
    [Arguments]    ${LOCATER}
    Clear Element Text    ${LOCATER}

press enter
    [Arguments]   ${LOCATER}
    Press Keys    ${LOCATER}    ENTER