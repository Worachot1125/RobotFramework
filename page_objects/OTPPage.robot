*** Settings ***
Library    SeleniumLibrary
Resource   ../keywords/CommonKeywords.robot

*** Variables ***
${OTP_PAGE_TEXT}    ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์
${OPTCODE}          name = otpCode

*** Keywords ***
Verify OTP Page Displayed
    CommonKeywords.Wait until page contains element then verify text    ${OTP_PAGE_TEXT}

Fill OTP code
    CommonKeywords.Wait until element is ready then input text    xpath=//input[@name='otpCode']    ${OPTCODE}