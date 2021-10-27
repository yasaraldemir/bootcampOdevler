*** Settings ***

Library    SeleniumLibrary
*** Variables ***
# Homepage Search Elements
${txt_positionInput}  css:input[data-test='position-search-input']
${txt_locationInput}  css:input[data-test='location-search-input']
${btn_mainSearch}  css:button[data-test='main-search-button']
*** Keywords ***
Open my Browser
    [Arguments]    ${SiteUrl}    ${Browser}
    open browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window


Enter Position
    [Arguments]    ${position}
    Input Text    ${txt_positionInput}    ${position}

Enter Location
    [Arguments]    ${location}
    Input Text    ${txt_locationInput}    ${location}

Click MainSearch
    click button    ${btn_mainSearch}

Verify Succesfull PositonLocation Search
     title should be    İstanbul Garson İş İlanları & Eleman Arayan Firmalar | İşin Olsun

close my browsers
    close all browsers