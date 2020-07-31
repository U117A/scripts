@echo off
setlocal enabledelayedexpansion

call az account clear
call az login

for /l %%i in (1,1,!assinaturaTotal!) do (

set assinatura=!subscription[%%i]!

echo.
echo ___Set Subscription !assinatura! %%i/!assinaturaTotal!
call az account set --subscription !assinatura!
echo.

echo ___Criando Resource Group da Subscription !assinatura! %%i/!assinaturaTotal!
echo.
call az group create --name myResourceGroup --location westeurope --only-show-errors
echo.

	for /l %%a in (1,1,!total!) do (

		set regiao=!location[%%a]!

		set hour=!time:~0,2!
		if "!hour:~0,1!" == " " set hour=0!hour:~1,1!

		set nome=!date:~0,2!!date:~3,2!!date:~6,4!!hour!!time:~3,2!!time:~6,2!

		echo ____Criando Lote !nome! %%a/!total! em !regiao! da Subscription !assinatura! %%i/!assinaturaTotal!
		call  az batch account create --resource-group myResourceGroup --name !nome! --location !regiao! --only-show-errors
		echo.

		echo ____Acessando Lote !nome! %%a/!total! em !regiao! da Subscription !assinatura! %%i/!assinaturaTotal!
		call  az batch account login --resource-group myResourceGroup --name !nome! --shared-key-auth --only-show-errors
		echo.

		echo ____Criando Pool no Lote !nome! %%a/!total! em !regiao! da Subscription !assinatura! %%i/!assinaturaTotal!
		call  az batch pool create --json-file c:\Pool.json --only-show-errors
		echo.
		echo ____Lote !nome! %%a/!total! em !regiao! da Subscription !assinatura! %%i/!assinaturaTotal! Concluido.
		echo.
		echo.
	)
)
