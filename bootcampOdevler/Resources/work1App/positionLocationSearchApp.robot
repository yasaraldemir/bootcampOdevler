*** Settings ***
Library     SeleniumLibrary
Resource    ../work1/HomepageJobSearchKeyword.robot

*** Variables ***
${Browser}    chrome
${SiteUrl}    https://isinolsun.com/
${pstn}     Garson
${lctn}     İstanbul

*** Keywords ***
positionLocationTest
    Open my Browser    ${SiteUrl}    ${Browser}
    Enter Position    ${pstn}
    Enter Location    ${lctn}
    Click MainSearch
    sleep    3 seconds
    Verify Succesfull PositonLocation Search
    close my browsers