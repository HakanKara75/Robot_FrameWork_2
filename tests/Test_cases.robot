*** Settings ***
Library     SeleniumLibrary
Resource      ../pages/AmazonPage.robot

*** Test Cases ***
Product_Test
    Open Amazon Page
    Search Product    ${SEARCH_PRODUCT}
    Click First Result