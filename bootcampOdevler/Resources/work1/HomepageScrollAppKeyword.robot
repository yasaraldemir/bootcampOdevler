*** Settings ***
Library    SeleniumLibrary


*** Variables ***

${mobilAppIndir}  xpath://html/body/div/div[1]/section[3]/div[1]/div/div[2]/div[2]/ul/li[1]
${hizlaIsAra}  xpath://html/body/div/div[1]/section[3]/div[1]/div/div[2]/div[2]/ul/li[2]
${sanaUygunIlanlaraBasvur}  xpath://html/body/div/div[1]/section[3]/div[1]/div/div[2]/div[2]/ul/li[3]


*** Keywords ***

Open my Browser
    [Arguments]    ${SiteUrl}    ${Browser}
    open browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window

Homepage Scroll
    Execute JavaScript    window.scrollTo(0,1300)

Click btnHizlaIsAra
    click element   ${hizlaIsAra}}

Click btnMobilAppIndir
    click element   ${mobilAppIndir}

Click btnSanaUygunIlanlar
    click element   ${sanaUygunIlanlaraBasvur}

close my browsers
    close all browsers