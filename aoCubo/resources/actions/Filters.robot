*** Settings ***
Documentation       Filters

Library             Browser
Resource            ../../utils/variables.robot


*** Keywords ***
Filter name: Imóvel teste automatizado robot
    Click        ${btnImoveis}
    Type Text    ${txtPesquisa}    Imóvel teste automatizado robot
    Click         ${btnBuscar}
    Clear Text    ${txtPesquisa}

Filter incorporation: BKO
    Click        ${btnIncorporation}
    Type Text    ${filtBKO}    BKO
    Click        ${btnBKO}

Filter price: R$ 1.134.667,00 até 1.140.000,00
    Click                      ${btnFilt}
    Wait For Elements State    ${txtValueInit}     visible        2s
    Type Text                  ${txtValueInit}    113466700
    Wait For Elements State    ${txtValueFinal}     visible        2s
    Type Text                  ${txtValueFinal}    114000000
    Click                      ${btnFilterAplicationValue}

Filter status: ready
    Click    ${btnStage}
    Click    ${selectStageReady}
    Click    ${btnFltAplicationStage}

Filter City: São Paulo
    Click                      ${btnFltCity}
    Click                      ${cmbCity}
    Wait For Elements State    ${selectCity}     visible        2s
    Click                      ${selectCity}    force=true
    Wait For Elements State    ${selectSp}       visible        2s
    Click                      ${selectSp}      force=true
 

Filter Neighborhood: Jardim Triana
    Click                      ${btnFltCity}
    Click                      ${cmbCity}
    Wait For Elements State    ${selectNeig}     visible        2s
    Click                      ${selectNeig}    force=true
    Wait For Elements State    ${selectJardim}     visible        2s
    Click                      ${selectJardim}    force=true
Take Screenshot And Continuos Filters
    Wait For Elements State    ${btnPesqSucess} >> text=Imóvel teste automatizado robot
...    visible
...    5
    Take Screenshot

Clear Filter
    Wait For Elements State    ${btnClear} >> text=Limpar Filtro
...    visible
...    10
    Click    ${btnClear}

