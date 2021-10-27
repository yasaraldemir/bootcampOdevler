*** Settings ***
Documentation    Suite description
Resource    ./PageObject/utils.robot
Resource    ./PageObject/signup.robot
Resource    ./PageObject/filter.robot
Resource    ./PageObject/form.robot

*** Keywords ***
practice form created
    form.go to practice form
    form.enter the first name textbox
    form.enter the last name textbox
    form.enter the email textbox
    form.selected gender
    form.enter the mobile textbox
    form.enter the date of birth
    form.enter the subject textbox
    form.click the hobbies
    form.enter the current address
    form.enter the state textbox
    sleep    2 second
    form.enter the city textbox
    form.click the submit button
    sleep    3 second
    filter.close session





