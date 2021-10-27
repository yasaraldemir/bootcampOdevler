*** Settings ***
Library     SeleniumLibrary
Resource    ../work1/FilterKeyword.robot

*** Variables ***
${Browser}    chrome
${SiteUrl}    https://isinolsun.com/

*** Keywords ***
filter search
    Open my Browser    ${SiteUrl}    ${Browser}
    Click MainSearch
    Result Total Job
    sleep    3 seconds
    Click Date Filter
    Click Publish Date Today
    sleep    2 second
    Click Work Type Tumu
    Click Work Type Tam Zamanli
    sleep    3 second
    close my browsers