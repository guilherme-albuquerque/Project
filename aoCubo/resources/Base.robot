*** Settings ***
Documentation       Acesso site AoCubo
Library             Browser
Resource            actions/Login.robot

*** Keywords ***
Start Session
    New Browser    firefox    headless=false
    New Context    ignoreHTTPSErrors=true    viewport={'width':1540, 'height': 1050}
    New Page       ${url}