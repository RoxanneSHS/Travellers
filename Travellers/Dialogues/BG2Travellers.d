BEGIN TR_HANSO

CHAIN
IF~Global("TR_SonVamp","Global",4)Global("TRAmnOnce","Global",0)~THEN TR_Sonja Amn1
@1000
DO~SetGlobal("TRAmnOnce","Global",1)~
=@1001
END
++@1002 + Amn3
++@1003 + Amn3
++@1004 + Amn3
++@1005 EXIT

CHAIN
IF~Global("TR_SonVamp","Global",4)Global("TRAmnOnce","Global",1)~THEN TR_Sonja Amn2
@1006
END
IF~~THEN + Amn3

CHAIN
IF ~~THEN TR_Sonja Amn3
@1007
=@1008
END
++@1009 + Amn4
++@1010 + Amn4

CHAIN
IF ~~THEN TR_Sonja Amn4
@1011
END
++@1012 + Amn6
++@1013 + Amn6
++@1005 DO~SetGlobal("TRAmnOnce","Global",2)~ EXIT

CHAIN
IF~Global("TR_SonVamp","Global",4)Global("TRAmnOnce","Global",2)~THEN TR_Sonja Amn5
@1006
=@1014
END
++@1012 + Amn6
++@1013 + Amn6

CHAIN
IF ~~THEN TR_Sonja Amn6
@1015
=@1016
END
++ @1017 + Amn7
++ @1018 + Amn7

CHAIN
IF ~~THEN TR_Sonja Amn7
@1019
=@1020
END
++@1021 + Amn8
++@1022 + Amn9
++@1023 + Amn10

CHAIN
IF ~~THEN TR_Sonja Amn8
@1024
END
IF~~THEN + Amn11

CHAIN
IF ~~THEN TR_Sonja Amn9
@1025
END
IF~~THEN + Amn11

CHAIN
IF ~~THEN TR_Sonja Amn10
@1026
END
IF~~THEN + Amn11

CHAIN
IF ~~THEN TR_Sonja Amn11
@1027
DO~SetGlobal("TR_SonVamp","Global",5)~
=@1028
END
++@1029 DO~AddJournalEntry(@1032,QUEST)~EXIT
++@1030 DO~AddJournalEntry(@1032,QUEST)~EXIT
++@1031 DO~AddJournalEntry(@1032,QUEST)~EXIT

EXTEND_TOP Bart14 0 #1
IF~Global("TR_SonVamp","Global",5) PartyHasItem("TR_Pend3")~THEN REPLY @1034 DO~EraseJournalEntry(@1033)~ GOTO Ulgo32
END

CHAIN
IF~~THEN Bart14 Ulgo32
@1035
END
++@1036 + Ulgo33

CHAIN
IF~~THEN Bart14 Ulgo33
@1037 DO~AddJournalEntry(@1038,QUEST)~EXIT

EXTEND_TOP Borda 0 #1
IF~Global("TR_SonVamp","Global",5)~THEN REPLY @1039 GOTO Borda2
END

CHAIN
IF~~THEN Borda Borda2
@1040
END
++@1041 + Borda3
++@1042 + Borda3

CHAIN
IF~~THEN Borda Borda3
@1043
END
++@1044 + Borda4
++@1045 + Borda4
++@1049 + Borda4

CHAIN
IF~~THEN Borda Borda4
@1046 DO~AddJournalEntry(@1048,QUEST)~
==IF_FILE_EXISTS D#SILVER IF~InParty("D#SILVER")!StateCheck("D#SILVER",CD_STATE_NOTVALID) ~THEN @1047
==IF_FILE_EXISTS SimeJ IF~InParty("PPSime")!InParty("D#SILVER")!StateCheck("PPSime",CD_STATE_NOTVALID) ~THEN @1047
==SafanJ IF~InParty("Safana") !InParty("PPSime")!InParty("D#SILVER") !StateCheck("Safana",CD_STATE_NOTVALID) ~THEN @1047
==JanJ IF~InParty("Jan") !InParty("Safana")!InParty("PPSime")!InParty("D#SILVER") !StateCheck("Jan",CD_STATE_NOTVALID) ~THEN @1047
==NaliaJ IF~!InParty("Jan") !InParty("Safana")!InParty("PPSime")!InParty("D#SILVER") InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) ~THEN @1047
==HexxatJ IF~InParty("Hexxat") !InParty("Jan")!InParty("PPSime")!InParty("D#SILVER") !InParty("Safana") !InParty("Nalia") !StateCheck("Hexxat",CD_STATE_NOTVALID) ~THEN @1047 EXIT

CHAIN
IF~Global("TR_SonVamp","Global",5)~THEN TR_Sonja Solve
@1053
END
++@1054  + Solve2
+ ~Dead("TR_Vamp")~+@1055  DO~SetGlobal("TR_SonVamp","Global",6)~+  Solve3
+ ~Dead("TR_Vamp")~+@1056  DO~SetGlobal("TR_SonVamp","Global",6)~+ Solve3
+ ~PartyHasItem("TR_Pend")~+@1057 DO~SetGlobal("TR_SonVamp","Global",7)~+ Solve4

CHAIN
IF~~THEN TR_Sonja Solve2
@1058 EXIT

CHAIN
IF~~THEN TR_Sonja Solve3
@1059  DO~EscapeAreaDestroy(15)~EXIT

CHAIN
IF~~THEN TR_Sonja Solve4
@1060 DO~TakePartyItem("TR_Pend") Wait(1)EscapeAreaDestroy(15)~EXIT

CHAIN
IF~Global("TR_SonVamp","Global",7)~THEN TR_Hanso Thanks
@1061
DO~SetGlobal("TR_SonVamp","Global",8)~
END
++@1062  + Thanks2
++@1063  + Thanks2
++@1064  + Thanks2

CHAIN
IF~~THEN TR_Hanso Thanks2
@1065
DO~GivePartyGold(3000)~
=@1066
END
++@1067 DO~EscapeAreaDestroy(45)~EXIT
++@1068 DO~ EscapeAreaDestroy(45)~EXIT
++@1069 + Thanks3

CHAIN
IF~~THEN TR_Hanso Thanks3
@1070
=@1071 DO~ EscapeAreaDestroy(45)~EXIT

//Chill warning
CHAIN
IF WEIGHT #-7~Global("TR_HobLetGo","Global",4)~THEN Hobgo5 Tazwarn
@526
DO~SetGlobal("TR_HobLetGo","Global",5)~
=@527
END
++ @528 + Tazwarn2
++ @529 + Tazwarn2

CHAIN
IF~~THEN Hobgo5 Tazwarn2
@530
=@531 DO~EscapeArea()~EXIT

// Landrin opens Baldurs Gate
CHAIN
IF WEIGHT #-8~GlobalGT("HelpLandrin","GLOBAL",2)AreaCheck("ar0021")~THEN Landri AmnHelp1
#214913 
DO~ AddJournalEntry(@1200,QUEST)~
=@1202
END
IF~Global("HelpLandrin","GLOBAL",4)~THEN DO~ SetGlobal("HelpLandrin","GLOBAL",5) EscapeArea()~ EXIT
IF~!Global("HelpLandrin","GLOBAL",4)~THEN DO~ SetGlobal("HelpLandrin","GLOBAL",5) MoveBetweenAreas("BG3315",[334.283],S)~ EXIT

CHAIN
IF WEIGHT #-8~ Global("HelpLandrin","GLOBAL",5) AreaCheck("BG3315")~THEN Landri AmnHelp2
@1203
DO~SetGlobal("HelpLandrin","GLOBAL",6) EraseJournalEntry(@1200)~
=@1204
=@1205 DO~AddJournalEntry(@1201,QUEST_DONE) Wait(2) EscapeArea()~EXIT
