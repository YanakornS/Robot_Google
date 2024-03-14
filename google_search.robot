*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${BROWSER}          Chrome
${SEARCH_TERM}      robot framework
${SEARCH_RESULT}    robot framework
${SEARCH_RESULT2}   User Guide 

*** Test Cases ***
Search Google
    Open Google
    Input Search Term
    Press Keys Google Search
    Verify Search Results
    Close Browser


Search Google RESULT2
    Open Google
    Input Search Term
    Press Keys Google Search
    Verify Search Results2
    Close Browser



Search Yahoo
    Open Yahoo
    Input Search Term Yahoo
    Press Keys Yahoo Search
    Verify Search Results
    Close Browser



Search Google RESULT
    Open Google
    Input XSearch Term
    Press Keys Google Search
    Verify Search Results2
    Close Browser



*** Keywords ***



Open Google
    Open Browser     https://www.google.com    ${BROWSER}
    




Input XSearch Term
    Input Text     xpath=//*[@name="q"]             ${SEARCH_TERM}
Input Search Term
    Input Text      name=q                 ${SEARCH_TERM}

Press Keys Google Search
   Press Keys   name=q      ENTER

Verify Search Results
    Wait Until Page Contains    ${SEARCH_TERM}
    Page Should Contain    ${SEARCH_RESULT}
    
Verify Search Results2
    Wait Until Page Contains    ${SEARCH_TERM}
    Page Should Contain    ${SEARCH_RESULT2}

Open Yahoo
    Open Browser    https://www.yahoo.com  ${BROWSER}

Input Search Term Yahoo
    Input Text      name=p                 ${SEARCH_TERM}

Press Keys Yahoo Search
   Press Keys   name=p      ENTER





