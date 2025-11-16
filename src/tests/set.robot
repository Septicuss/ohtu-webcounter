*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Reset Counter

*** Test Cases ***
Setting value manually
    Go To  ${HOME_URL}
    Input Text  value  10
    Click Button  aseta
    Page Should Contain  nappia painettu 10 kertaa

Setting invalid value
    Go To  ${HOME_URL}
    Input Text  value  a
    Click Button  aseta
    Page Should Contain  nappia painettu 0 kertaa
