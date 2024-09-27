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
${OTP_PAGE_TEXT}              ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์
${OPTCODE}                    name = otpCode
${SUBMIT_OTP}                 xpath=//button[text()='ยืนยัน OTP']


*** Keywords ***
Click Register Button
    CommonKeywords.Wait until element is ready then click element    ${REGISTER_BUTTON}

Fill Registration Form
    [Arguments]    ${firstName}    ${lastName}    ${email}    ${phoneNumber}    ${newPassword}    ${confirmPassword}
    CommonKeywords.Wait until element is ready then input text    ${FIRSTNAME_INPUT}    ${firstName}
    Sleep    2s
    CommonKeywords.Wait until element is ready then input text    ${LASTNAME_INPUT}    ${lastName}
    Sleep    2s
    CommonKeywords.Wait until element is ready then input text    ${EMAIL_INPUT}       ${email}
    Sleep    2s
    CommonKeywords.Wait until element is ready then input text    ${PHONE_INPUT}       ${phoneNumber}
    Sleep    2s
    CommonKeywords.Wait until element is ready then input text    ${NEW_PASSWORD_INPUT}    ${newPassword}
    Sleep    2s
    CommonKeywords.Wait until element is ready then input text    ${CONFIRM_PASSWORD_INPUT}    ${confirmPassword}
    Sleep    2s

 Click Checkbox
    CommonKeywords.Wait until element is ready then click element    ${CHECKBOX}  
    Sleep   2s 


Submit Registration
    CommonKeywords.Wait until element is ready then click element    ${SUBMIT_BUTTON}
    Sleep    2s

Verify OTP Page Displayed
    CommonKeywords.Wait until page contains element then verify text    ${OTP_PAGE_TEXT}
    Sleep    2s

Fill OTP code
    [Arguments]    ${otpCode}
    CommonKeywords.Wait until element is ready then input text       ${OPTCODE}    ${otpCode}
    Sleep    2s

Submit OTP
    CommonKeywords.Wait until element is ready then click element    ${SUBMIT_OTP}


