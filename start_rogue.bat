echo off
:START
CLS

echo Welcome to rogue.
kt crlf 1
echo  1: rogue���v���C
echo  2: �X�R�A�\��
echo  q: �I��
kt crlf 1
kt inkey

IF "%inkey%" == "1" GOTO PLAY
IF "%inkey%" == "2" GOTO SCORE
IF "%inkey%" == "q" GOTO QUIT
GOTO START

:PLAY
IF %USER% == %%USER%% SET USER=USER1
kt input USER "�v���C���[��:" %USER%
IF %USER% == %%USER%% SET USER=USER1
rogue msg\mesg
GOTO START

:SCORE
rogue msg\mesg -s
GOTO START

:QUIT
