*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/resourcekey.robot
Test Setup     open my browser     ${theurl}
Test Teardown  close


*** Variables ***
${theurl}         https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${admin}          admin@yourstore.com
${adminpass}      admin







*** Test Cases ***
TestLogin

    Enter Information    ${admin}       ${adminpass}
    Verify Login Pass
