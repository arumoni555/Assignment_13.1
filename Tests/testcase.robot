*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/common.robot
*** Test Cases ***
Observe user is able to test sanity flow
    [Tags]  sanity  
    Given User Launch browser for flipkart
    Then User enters login credentials
    Then User searches for electronics section and select a catogory
    Then User selects a desired item
    Then User adds the item to the cart
    [Teardown]  And Terminate browser


*** Variables ***
${url} =  https://www.flipkart.com/
${login_No} =  Xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input
${login_password} =  Xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[2]/input
${click_login} =  Xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[4]/button
${select_Catogory} =  Xpath=/html/body/div/div/div[2]/div/div/div[5]
${select_Dropdown} =  Xpath=/html/body/div/div/div[2]/div/div/div[5]/a/div[2]/div[2]
${click_Subcatogory} =  Xpath=/html/body/div/div/div[2]/div/div/div[5]/a/div[2]/div[2]/div[2]/div/div/div[1]/a[2]
${search_bar} =  Xpath=/html/body/div/div/div[1]/div[1]/div[2]/div[2]/form/div/div/input
${search_button} =  Xpath=/html/body/div/div/div[1]/div[1]/div[2]/div[2]/form/div/button
${select_item} =  Xpath=/html/body/div/div/div[3]/div[1]/div[2]/div[2]/div/div/div/a
${add_to_cart} =  Xpath=/html/body/div[1]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[1]/button
${cart_button} =  Xpath=/html/body/div/div/div[1]/div[1]/div[2]/div[5]
${handle}  NEW