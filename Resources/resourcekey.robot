*** Settings ***
Library   SeleniumLibrary


Variables   ../locators/Login.py




*** Keywords ***
Open My Browser
    [Arguments]    ${url}
    Create Webdriver    Chrome    executable_path=C:/Users/LORD TRADE/AppData/Roaming/Python/Python39/Scripts/chromedriver.exe
    GO TO      ${url}
    MAXIMIZE BROWSER WINDOW
Enter Information
    [Arguments]     ${theemail}  ${thepassword}
    clear element text   ${email}
    input text    ${email}     ${theemail}
    clear element text     ${password}
    input text    ${password}    ${thepassword}
    click button   ${btn}


Verify Login Pass

    title should be     Dashboard / nopCommerce administration

close
    close browser