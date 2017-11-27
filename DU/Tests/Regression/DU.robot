*** Settings ***
Test Setup        Prepare Browser    ${url}    ${browser}    ${logoToCheckPageBy}
Test Teardown     Close Browser
Library           Selenium2Library
Resource          ../../Keywords/Common_Keywords.txt
Resource          ../../Objects/Main_Page.txt
Resource          ../../Settings/Browser_Settings.txt

*** Test Cases ***
Akce Na Webu
    Get Search Results    ${lookingFor}
    Page Should Contain Link    ${destinationPage}
    Click Link    ${destinationPage}
    Title Should Be    ${titleToCheckSearchResultBy}
