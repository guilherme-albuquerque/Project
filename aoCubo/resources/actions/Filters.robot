*** Settings ***
Documentation       Filters

Library             Browser
Resource            ../../utils/variables.robot


*** Keywords ***
Filter name: Imóvel teste automatizado robot
    Click        ${btnImoveis}
    Type Text    ${txtPesquisa}    Imóvel teste automatizado robot
    Click        ${btnBuscar}
    Clear Text   ${txtPesquisa}

Filter incorporation: BKO
    Click          ${btnIncorporation}
    Type Text      ${filtBKO}        BKO
    Click          ${btnBKO}

Filter price: R$ 1.134.667,00 até 1.140.000,00
    Click          ${btnFilt}
    Type Text      ${txtValueInit}        113466700
    Type Text      ${txtValueFinal}       114000000
    Click          ${btnFilterAplicationValue}

Filter status: ready
    Click          ${btnStage}
    Click          ${selectStageReady}
    Click          ${btnFltAplicationStage}



Filter City: São Paulo
    Click          ${btnFltCity}
    Click          ${cmbCity}
    Click          ${selectSp}
    Sleep           2s
    Click           ${selectSp2} 

Filter Neighborhood: Jardim Triana

Take Screenshot And Continuos Filters
    Wait For Elements State        ${btnPesqSucess} >> text=Imóvel teste automatizado robot
...  visible
...  5
    Take Screenshot
    
Clear Filter
    Wait For Elements State        ${btnClear} >> text=Limpar Filtro
...  visible
...  10
    Click    ${btnClear}