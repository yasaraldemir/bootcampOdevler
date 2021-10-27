*** Settings ***

Library    SeleniumLibrary
*** Variables ***

${dateFilterAll}  css:button[data-test='publish-date-filter-button']
${publishDateToday}  css:a[data-test='publish-date-filter1']
${workTypeTumu}  css:button[data-test='work-type-filter-button']
${workTypeTamZamanli}  css:a[data-test='work-type-filter1']
${resultTotal}  css:h2[data-test='result-total']
${btn_mainSearch}  css:button[data-test='main-search-button']
*** Keywords ***
Open my Browser
    [Arguments]    ${SiteUrl}    ${Browser}
    open browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window

Click MainSearch
    click button    ${btn_mainSearch}

Click Date Filter
    click button    ${dateFilterAll}

Click Publish Date Today
    click element    ${publishDateToday}

Click Work Type Tumu
    click button    ${workTypeTumu}

Click Work Type Tam Zamanli
    click element    ${workTypeTamZamanli}

Result Total Job
    log    ${resultTotal}

close my browsers
    close all browsers