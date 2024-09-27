*** Settings ***
Library         SeleniumLibrary
Resource        ../page_objects/RegisterPage.robot
Resource        ../page_objects/OTPPage.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml
Suite Setup     Open Browser    ${baseUrl}    chrome
Suite Teardown  Close Browser

*** Test Cases ***
As a user, I want to register successfully
    [Documentation]    This test verifies that a user can successfully register on the Future Skill platform and reach the OTP page.
    RegisterPage.Click Register Button
    RegisterPage.Fill Registration Form    ${firstName}    ${lastName}    ${email}    ${phoneNumber}    ${newPassword}    ${confirmPassword}
    RegisterPage.Click Checkbox
    RegisterPage.Submit Registration
    OTPPage.Verify OTP Page Displayed