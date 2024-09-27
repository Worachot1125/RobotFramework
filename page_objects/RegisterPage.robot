*** Settings ***
Library    SeleniumLibrary
Resource   ../keywords/CommonKeywords.robot

*** Variables ***
${REGISTER_BUTTON}            xpath=//button[text()='สมัครสมาชิก']
${FIRSTNAME_INPUT}            name=firstName
${LASTNAME_INPUT}             name=lastName
${EMAIL_INPUT}                name=email
${PHONE_INPUT}                name=phoneNumber
${NEW_PASSWORD_INPUT}         name=newPassword
${CONFIRM_PASSWORD_INPUT}     name=confirmPassword
${CHECKBOX}                   name=consent
${SUBMIT_BUTTON}              xpath=//button[text()='สมัครสมาชิก']

*** Keywords ***
Click Register Button
    CommonKeywords.Wait until element is ready then click element    ${REGISTER_BUTTON}

Fill Registration Form
    [Arguments]    ${firstName}    ${lastName}    ${email}    ${phoneNumber}    ${newPassword}    ${confirmPassword}
    CommonKeywords.Wait until element is ready then input text    ${FIRSTNAME_INPUT}    ${firstName}
    CommonKeywords.Wait until element is ready then input text    ${LASTNAME_INPUT}    ${lastName}
    CommonKeywords.Wait until element is ready then input text    ${EMAIL_INPUT}       ${email}
    CommonKeywords.Wait until element is ready then input text    ${PHONE_INPUT}       ${phoneNumber}
    CommonKeywords.Wait until element is ready then input text    ${NEW_PASSWORD_INPUT}    ${newPassword}
    CommonKeywords.Wait until element is ready then input text    ${CONFIRM_PASSWORD_INPUT}    ${confirmPassword}

 Click Checkbox
    CommonKeywords.Wait until element is ready then click element    ${CHECKBOX}   


Submit Registration
    CommonKeywords.Wait until element is ready then click element    ${SUBMIT_BUTTON}

