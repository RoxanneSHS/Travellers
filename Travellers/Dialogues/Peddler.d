BEGIN  TR_PEDLE

CHAIN
IF~Global("TR_Peddler","Global",1)~THEN TR_PEDLE Intro
@1101
DO~SetGlobal("TR_Peddler","Global",2)~
=@1102
=@1103 DO~StartStore("TR_Pedle",LastTalkedToBy(Myself))~EXIT

CHAIN
IF~GlobalGT("TR_Peddler","Global",1)~THEN TR_PEDLE Always
@1104 DO~StartStore("TR_Pedle",LastTalkedToBy(Myself))~EXIT


