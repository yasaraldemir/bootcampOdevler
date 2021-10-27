*** Settings ***
Library     SeleniumLibrary
Resource    ../work1/HomepageScrollAppKeyword.robot

*** Variables ***
${Browser}    chrome
${SiteUrl}    https://isinolsun.com/

*** Keywords ***

HomepageScrollTest
    Open my Browser    ${SiteUrl}    ${Browser}
    Homepage Scroll
    sleep    3 second
    Click btnSanaUygunIlanlar
    sleep    3 second
    Click btnMobilAppIndir
    sleep    3 second
    close my browsers


