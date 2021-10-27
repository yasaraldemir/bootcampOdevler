*** Settings ***
Documentation    Suite description
Resource    ./PageObject/filter.robot



*** Keywords ***
click find job
    filter.create session
    filter.click accept cookie
    filter.click search dropdown
    filter.click category fashion
    filter.enter home page search
    filter.click home page search button
    filter.check jean search verify
    filter.click search in item jean
    filter.click body size
    filter.selected body size
    sleep    2 second
    filter.click card button
    filter.check buy button to login verify
    sleep    3 second
    filter.close session