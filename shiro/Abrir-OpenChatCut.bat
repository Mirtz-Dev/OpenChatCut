@echo off
title OpenChatCut
cd /d D:\Projetos\OpenChatCut
echo Abrindo o OpenChatCut (versao desktop do nosso fork)...
echo Deixe esta janela aberta enquanto usar o app.
if not exist dist\index.html (
  echo Primeira execucao: compilando a interface, leva alguns minutos...
  call npm run build
)
call npm run desktop:dev
