CLS
SET FILE=%1
MASM /Z /T %FILE%.ASM;
LINK %FILE%.OBJ;
%FILE%.EXE

