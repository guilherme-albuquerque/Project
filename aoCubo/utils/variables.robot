*** Settings ***
Documentation       Variaveis Ao Cubo

Library             Browser


*** Variables ***
${url}                       https://portal.dev.cloud.aocubo.com/login
${txtEmail}                  xpath=//input [@type="email"]
${txtSenha}                  xpath=//input [@type="password"]
${btnImoveis}                xpath=//a [@href="/dashboard/imoveis"]
${btnEntrar}                 xpath=//button[@type="submit"]
${txtPesquisa}               xpath=//input[@data-testid="search-by-name"]
${btnBuscar}                 xpath=//div[@class="styles__ButtonSearchContainer-sc-1f6rqub-5 lalCWd"]
${btnClear}                  xpath=/html/body/div/div[2]/div[2]/div/div[1]/div/form/div[1]/div[2]/div[2]/button
${bntLoginSucess}            xpath=//div[@class="styles__UserSettings-sc-1sbqjsh-16 bQvsPG"]
${btnPesqSucess}             xpath=//h3[@class="styles__TitleItem-sc-1hg4id7-11 kQrABm"]
${btnIncorporation}          xpath=//*[@id="__next"]/div[2]/div[2]/div/div[1]/div/form/div/div[2]/div[2]/div[1]
${filtBKO}                   xpath=//input[@placeholder="Buscar Incorporadora"]
${btnBKO}                    xpath=//*[@id="__next"]/div[2]/div[2]/div/div[1]/div/form/div/div[2]/div[2]/div[2]/div/div[2]/label/div[1]/img
${btnFilt}                   xpath=//*[@id="__next"]/div[2]/div[2]/div/div[1]/div/form/div[2]/div[1]
${txtValueInit}              xpath=/html/body/div/div[2]/div[2]/div/div[1]/div/form/div[2]/div[1]/div/div[1]/div/input[1]
${txtValueFinal}             xpath=/html/body/div/div[2]/div[2]/div/div[1]/div/form/div[2]/div[1]/div/div[1]/div/input[2]
${btnFilterAplicationValue}  xpath=/html/body/div/div[2]/div[2]/div/div[1]/div/form/div[2]/div[1]/div/div[2]/button[2]
${btnStage}                  xpath=/html/body/div/div[2]/div[2]/div/div[1]/div/form/div[2]/div[3]
${selectStageReady}          xpath=/html/body/div/div[2]/div[2]/div/div[1]/div/form/div[2]/div[3]/div/div[1]/label[3]/div
${btnFltAplicationStage}     xpath=/html/body/div/div[2]/div[2]/div/div[1]/div/form/div[2]/div[3]/div/div[2]/button[2]
${btnFltCity}                xpath=/html/body/div/div[2]/div[2]/div/div[1]/div/form/div[1]/div[2]/div[1]/div[1]
${cmbCity}                   xpath=/html/body/div/div[2]/div[2]/div/div[1]/div/form/div[1]/div[2]/div[1]/div[2]
${selectCity}                xpath=/html/body/div/div[2]/div[2]/div/div[1]/div/form/div[1]/div[2]/div[1]/div[1]
${selectSp}                  xpath=/html/body/div/div[2]/div[2]/div/div[1]/div/form/div[1]/div[2]/div[1]/div[2]/div/div[1]/div[2]/button[1]
${selectNeig}                xpath=/html/body/div/div[2]/div[2]/div/div[1]/div/form/div[1]/div[2]/div[1]/div[2]/div/div[4]/div[1]/input
${selectJardim}                xpath=/html/body/div/div[2]/div[2]/div/div[1]/div/form/div[1]/div[2]/div[1]/div[2]/div/div[4]/div[2]/button[119]
