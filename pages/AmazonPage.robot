*** Settings ***
Library      SeleniumLibrary
#Robot classtan olustursaydik Resources yazacaktik, pythondan variable olusturdugumuz icin Variables yazdik
Variables      ../locators/locators.py

*** Variables ***
${AMAZON_URL}      https://amazon.com
${SEARCH_PRODUCT}     Robot Framework Test Automation

*** Keywords ***
Open Amazon Page
    Open Browser   ${AMAZON_URL}     chrome

Search Product
    [Arguments]       ${product_name}
    Input Text    ${AmazonLocators.SEARCH_BOX}    ${product_name}
    Click Element    ${AmazonLocators.SEARCH_BUTTON}
    ${actual}       Get Text    ${AmazonLocators.RESULT_TEXT}
    ${expected_text}    Set Variable      ${SEARCH_PRODUCT}
    Log      Actual Text:     ${actual}
    Should Be Equal As Strings    ${expected_text}    ${actual}

Click First Result
    Click Element    ${AmazonLocators.FIRST_RESULT}
    Sleep    3