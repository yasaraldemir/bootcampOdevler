*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
create session
    open browser    https://www.amazon.com.tr/  chrome
    Maximize Browser Window
click search dropdown
    click element    css=div#nav-search-dropdown-card > .nav-search-scope.nav-sprite
click category fashion
    click element    xpath=/html/body/div[1]/header/div/div[1]/div[2]/div/form/div[2]/div/div/select/option[13]
enter home page search
    input text    id=twotabsearchtextbox    Jean Pantolon
click home page search button
    click element    id=nav-search-submit-button
check jean search verify
    wait until location contains    Jean
    wait until location contains    Pantolon
click search in item jean
    click element    css=.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-of-type(2)
click body size
    click element    id=native_dropdown_selected_size_name
selected body size
    click element    id=native_size_name_2
click card button
    click element    id=buy-now-button
check buy button to login verify
    wait until location contains    signin
    wait until page contains    Giriş yap
click accept cookie
    click element    id=sp-cc-accept
close session
    close browser



