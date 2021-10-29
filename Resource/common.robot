*** Keywords ***
User Launch browser for flipkart
    Open Browser  ${url}  gc
    Maximize Browser Window 

User enters login credentials
    Set Selenium Speed  1s
    Input Text  ${login_No}  9535560951
    Input Password  ${login_password}  monishri 
    Click Button  ${click_login}

User searches for electronics section and select a catogory
    Mouse Over  ${select_Catogory}  
    Mouse Over  ${select_Dropdown}
    Click Element  ${click_Subcatogory} 

User selects a desired item 
    Input Text  ${search_bar}  canon cameras
    Click Button  ${search_button}
    Click Element  ${select_item}
    Capture Page Screenshot  sc1.png
      
User adds the item to the cart 
    Switch Window  ${handle}
    sleep  2s
    Click Button  ${add_to_cart}
    sleep  2s
    Capture Page Screenshot  sc2.png
    Close Window

Terminate browser
    Close Browser