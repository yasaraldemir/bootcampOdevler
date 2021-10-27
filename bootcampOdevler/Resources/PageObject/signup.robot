*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary

*** Keywords ***
login input email
    [Arguments]    ${email}
    input text    id=ap_email    ${email}

login click continue
    click element    id=continue

check login password page verify
    wait until page contains    Şifre
    wait until page contains    Şifremi unuttum

login input password
    [Arguments]    ${password}
    input text    id=ap_password    ${password}

login click signIn button
    click element    id=signInSubmit

check unsuccessful login verify
    wait until page contains    Bir sorun oluştu
    wait until page contains    Şifreniz yanlış



