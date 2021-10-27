*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
click home page signin button
    click element    id=nav-link-accountList

click signin create account button
    click element    id=auth-create-account-link

check register page verify
    wait until location contains    register
    wait until page contains    Hesap oluşturun

input register customer name
    [Arguments]    ${CUSTOMER_NAME}
    input text    id=ap_customer_name  ${CUSTOMER_NAME}

input register e-mail
    [Arguments]    ${E-MAIL}
    input text    id=ap_email    ${E-MAIL}

input register password
    [Arguments]  ${PASSWORD}
    input text    id=ap_password    ${PASSWORD}

input register check password
    [Arguments]    ${CHE_PASSWORD}
    input text    id=ap_password_check    ${CHE_PASSWORD}

click register new create account button
    click element    id=createAccountSubmit

click register confirmation
    click element    id=continue

check empty input click new account button verify
    wait until page contains    Adınızı girin
    wait until page contains    E-posta adresinizi veya cep telefonu numaranızı girin
    wait until page contains    Şifrenizi girin

check register page missmatchedpassword verify
    wait until page contains    Şifreler eşleşmiyor