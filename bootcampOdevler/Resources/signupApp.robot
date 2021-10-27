*** Settings ***
Documentation    Suite description
Resource    ./PageObject/signup.robot
Resource    ./PageObject/filter.robot
Resource    ./PageObject/register.robot
Resource    ./PageObject/a.robot

*** Keywords ***
successfull login
    filter.create session
    filter.click accept cookie
    register.click home page signin button
    signup.login input email    ysrald@gmail.com
    signup.login click continue
    signup.check login password page verify
    signup.login input password    8544Ysr+
    signup.login click signIn button
    sleep    3 second
    filter.close session

unsuccessfull login
    filter.create session
    filter.click accept cookie
    register.click home page signin button
    signup.login input email    ysrald@gmail.com
    signup.login click continue
    signup.check login password page verify
    signup.login input password    1234325463
    signup.login click signIn button
    signup.check unsuccessful login verify
    sleep    3 second
    filter.close session
