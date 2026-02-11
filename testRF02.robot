*** Settings ***
Library             SeleniumLibrary
Suite Setup         Open Browser   https://chiangmuan.igovapp.com/health/diagnostic?id=1529902284357-00179   Chrome
Suite Teardown      Close Browser

*** Variables ***
${click view}       //*[@id="root"]/div/main/article/section[3]/div/div/div/a

*** Keywords ***
Login with line
    Maximize Browser Window
    Log To Console    กรุณา Login ด้วย LINE ก่อน
    Sleep    20s

Click for view history
    Click Element 	 ${click view}

*** Test Cases ***
view history
    Login with line
    Click for view history



