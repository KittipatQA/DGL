*** Settings ***
Library     /Users/USER1/.jenkins/workspace/DGL/Resource/math.py  WITH NAME  math

*** Keywords ***

Verify addition of ${operand1} and ${operand2} is ${result}
    [Documentation]    Verify addition of two integers
    ${calculated_result}=  math.calculate  ${operand1}  ${operand2}  +
    Should Be Equal as Integers  ${calculated_result}  ${result}

Verify subtraction of ${operand1} and ${operand2} is ${result}
    [Documentation]    Verify subtraction of two integers
    ${calculated_result}=  math.calculate  ${operand1}  ${operand2}  -
    Should Be Equal as Integers  ${calculated_result}  ${result}

Verify multiplication of ${operand1} and ${operand2} is ${result}
    [Documentation]    Verify multiplication of two integers
    ${calculated_result}=  math.calculate  ${operand1}  ${operand2}  *
    Should Be Equal as Integers  ${calculated_result}  ${result}

Verify division of ${operand1} and ${operand2} is ${result}
    [Documentation]    Verify division of two integers
    ${calculated_result}=  math.calculate  ${operand1}  ${operand2}  /
    Should Be Equal as Integers  ${calculated_result}  ${result}