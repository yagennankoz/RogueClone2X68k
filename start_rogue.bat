echo off
:START
CLS

echo Welcome to rogue.
kt crlf 1
echo  1: rogueをプレイ
echo  2: スコア表示
echo  q: 終了
kt crlf 1
kt inkey

IF "%inkey%" == "1" GOTO PLAY
IF "%inkey%" == "2" GOTO SCORE
IF "%inkey%" == "q" GOTO QUIT
GOTO START

:PLAY
IF %USER% == %%USER%% SET USER=USER1
kt input USER "プレイヤー名:" %USER%
IF %USER% == %%USER%% SET USER=USER1
rogue msg\mesg
GOTO START

:SCORE
rogue msg\mesg -s
GOTO START

:QUIT
