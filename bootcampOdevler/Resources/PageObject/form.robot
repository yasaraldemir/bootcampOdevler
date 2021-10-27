*** Settings ***
Documentation    Practice Form
Library    SeleniumLibrary
Resource     ./utils.robot

*** Variables ***
#Locater
${LOC_FIRST_NAME}    id:firstName
${LOC_LAST_NAME}    id:lastName
${LOC_EMAIL}  id:userEmail
${LOC_MOBILE_NO}  id:userNumber
${LOC_SUBJECT}  id:subjectsInput
${LOC_CURRENT_ADDRESS}  id:currentAddress
${LOC_BIRTH_DATE}  id:dateOfBirthInput
${LOC_GENDER_MALE}  css:div #genterWrapper > div:nth-of-type(2) > div > label
${LOC_BIRTH_DATE}    css:input#dateOfBirthInput
${LOC_BIRTH_MOUNT}    css:.react-datepicker__month-select [value='2']
${LOC_BIRTH_YEARS}    css:[value='1994']
${LOC_BIRTH_DAY}    css:div[role='listbox'] > div:nth-of-type(2) > div:nth-of-type(5)
${LOC_HOBBIES_SPORTS}    css:label[for="hobbies-checkbox-1"]
${LOC_HOBBIES_MUSIC}    css:label[for="hobbies-checkbox-3"]
${LOC_STATE}    id:state
${LOC_STATE_HARYANA}    css:#react-select-3-option-2
${LOC_CITY}    id:city
${LOC_CITY_PANIPAT}    css:#react-select-4-option-1
${LOC_SUBMIT_BUTTON}    id:submit

#Test Data

${URL}    https://demoqa.com/automation-practice-form
${FIRST_NAME}    Yaşar
${LAST_NAME}    Aldemir
${EMAIL}    ysrald@gmail.com
${MOBILE_NO}    1234567890
${SUBJECT}    English
${CURRENT_ADRESS}    Atakum/Samsun

*** Keywords ***
go to practice form
    utils.create session    ${URL}

enter the first name textbox
    utils.click    ${LOC_FIRST_NAME}
    utils.input    ${LOC_FIRST_NAME}    ${FIRST_NAME}

enter the last name textbox
    utils.click    ${LOC_LAST_NAME}
    utils.input    ${LOC_LAST_NAME}    ${LAST_NAME}

enter the email textbox
    utils.click    ${LOC_EMAIL}
    utils.input    ${LOC_EMAIL}    ${EMAIL}

enter the mobile textbox
    utils.click    ${LOC_MOBILE_NO}
    utils.input    ${LOC_MOBILE_NO}    ${MOBILE_NO}

enter the subject textbox
    utils.click    ${LOC_SUBJECT}
    utils.input    ${LOC_SUBJECT}    ${SUBJECT}
    utils.press enter    ${LOC_SUBJECT}

selected gender
    utils.click    ${LOC_GENDER_MALE}

enter the date of birth
    utils.click    ${LOC_BIRTH_DATE}
    utils.click    ${LOC_BIRTH_MOUNT}
    utils.click    ${LOC_BIRTH_YEARS}
    utils.click    ${LOC_BIRTH_DAY}

click the hobbies
    utils.click    ${LOC_HOBBIES_SPORTS}
    utils.click    ${LOC_HOBBIES_MUSIC}

enter the current address
    utils.input    ${LOC_CURRENT_ADDRESS}    ${CURRENT_ADRESS}

enter the state textbox
    utils.scroll
    utils.click    ${LOC_STATE}
    utils.click    ${LOC_STATE_HARYANA}

enter the city textbox
    utils.scroll
    utils.click    ${LOC_CITY}
    utils.click    ${LOC_CITY_PANIPAT}

click the submit button
    utils.click    ${LOC_SUBMIT_BUTTON}

check practice form submit result verify
    wait until page contains    Thanks for submitting the form
    wait until page contains    Label
    wait until page contains    Values
    wait until page contains element    id:closeLargeModal