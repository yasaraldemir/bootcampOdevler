*** Settings ***
Resource    ../Resources/registerApp.robot

*** Test Cases ***
empty input register
    registerApp.empty input and click create account button
input register missmatched
    registerApp.register missmatched password