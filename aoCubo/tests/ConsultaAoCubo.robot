*** Settings ***
Documentation       Consulta site Ao Cubo

Resource            ../resources/actions/Login.robot
Resource            ../resources/actions/Filters.robot
Resource            ../resources/Base.robot

Suite Setup         Start Session
Test Teardown    Take Screenshot And Continuos Filters

*** Test Cases ***
User Login
    Login With    vsantos.lvieira@gmail.com    Lopo@2812
    [Teardown]    Take Screenshot And Continuos Sucess
    
Filter Name
    Filter name: Imóvel teste automatizado robot

Filter Incorporation
    Filter incorporation: BKO

Filter Price
    Filter price: R$ 1.134.667,00 até 1.140.000,00

Filter Status
    Filter status: ready
    Clear Filter

Filter City
    Filter City: São Paulo

Filter 
    Filter Neighborhood: Jardim Triana