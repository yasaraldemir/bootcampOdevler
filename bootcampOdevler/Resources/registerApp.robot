*** Settings ***
Documentation    Suite description
Resource    ./PageObject/filter.robot
Resource    ./PageObject/register.robot

*** Keywords ***
empty input and click create account button
    filter.create session
    filter.click accept cookie
    register.click home page signin button
    filter.check buy button to login verify
    register.click register new create account button
    register.check register page verify
    register.click register confirmation
    sleep    3 second
#    register.check empty input click new account button verify
#    sleep    3 second
    filter.close session

register missmatched password
    filter.create session
    filter.click accept cookie
    register.click home page signin button
    filter.check buy button to login verify
    register.click register new create account button
    register.check register page verify
    register.input register customer name    Yaşar Aldemir
    register.input register e-mail    ysrald@gmail.com
    register.input register password    yasar123+
    register.input register check password    yasar123
    register.check register page missmatchedpassword verify
    register.click register confirmation
    sleep    3 second
    filter.close session
