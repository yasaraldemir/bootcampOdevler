*** Settings ***
Resource    ../Resources/signupApp.robot

*** Test Cases ***
login successfull
    signupApp.Successfull Login
login unsuccessfull
    signupApp.unsuccessfull login