//*[@id="root"]/div/main/section/div[3]/div[2]/div/div/a[1]/div/div[2]/span[1]
*** Settings ***
Library             SeleniumLibrary
Suite Setup         Open Browser   https://chiangmuan.igovapp.com/health/diagnostic?id=1529902284357-00179   Chrome
Suite Teardown      Close Browser

*** Variables ***
${click button 1}               //*[@id="root"]/div/main/section/div[3]/div[2]/div/div/a[1]/div
${click button view}            //*[@id="root"]/div/main/section[2]/div/div[2]/div[2]/a
${Click button bar}             /html/body/div[1]/div[2]/div[2]/div/div/div/div[1]/a/span[1]
${Click button save}            //*[@id="editorjs"]/div/div[1]/div[14]/div/div/div
${Click Id for view}            //*[@id="page-List/Physical Examination Form Result/List"]/div[2]/div[2]/div/div[3]/div[1]/div[1]/div[2]/div[1]/div/div[3]/div/div[1]/div[1]/span[2]/a

*** Keywords ***
Login with line
    Maximize Browser Window
    Log To Console    กรุณา Login ด้วย LINE ก่อน
    Sleep    20s

Click database for view
    Click Element 	 ${click button 1}
    Click Button 	 ${click button view}
    Click Button 	 ${Click button bar}
    Click Button 	 ${Click button save}
    Click Element 	 ${Click Id for view}



*** Test Cases ***
view history
    Login with line
    Click database for view