*** Settings ***
Library             SeleniumLibrary
Suite Setup         Open Browser   https://chiangmuan.igovapp.com/health/diagnostic?id=1529902284357-00179   Chrome
Suite Teardown      Close Browser

*** Variables ***
${button databasehealth}                    //*[@id="root"]/div/main/section/div[3]/div[2]/div/div/a[1]
${Submit Blood Results}                     //a[contains(@href,'Physical Examination Request')]
${Click button bar}                         //a[@title='ระบบข้อมูลสุขภาพ']
${Click button save}                        //*[@id="editorjs"]/div/div[1]/div[14]/div/div/div
${Click Id for view row 1}                  //*[normalize-space()='sk293065gd']
${Click button see ID People's side}        //*[@id="page-Physical Examination Form Result"]/div[1]/div/div/div[2]/div[3]/button

*** Keywords ***
Login with line
    Maximize Browser Window
    Log To Console    กรุณา Login ด้วย LINE ก่อน
    Sleep    20s

Click database for view
    Wait Until Element Is Visible    ${button databasehealth}    15s
    Click Element    ${button databasehealth}

Click button for see Submit
    Wait Until Element Is Visible    ${Submit Blood Results}    10s
    Click Element    ${Submit Blood Results}

Click Health Menu
    Wait Until Element Is Visible    ${Click button bar}    15s
    Click Element    ${Click button bar}

Click button save
    Wait Until Element Is Visible    ${Click button save}    15s
    Click Element    ${Click button save}

Click Id for view
    Wait Until Page Contains    Physical Examination Form Result    15s
    Wait Until Element Is Visible    ${Click Id for view row 1}    15s
    Click Element            ${Click Id for view row 1}

Click button Submit Id
    Wait Until Element Is Visible    ${Click button see ID People's side}    15s
    Click Element    ${Click button see ID People's side}
    Sleep    10s

*** Test Cases ***
view history
    Login with line
    Click database for view
    Click button for see Submit
    Click Health Menu
    Click button save
    Click Id for view
    Click button Submit Id