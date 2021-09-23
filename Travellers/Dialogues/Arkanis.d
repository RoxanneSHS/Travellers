BEGIN TR_ARKAN
BEGIN TRedwin

CHAIN
IF~Global("TR_ArkanJob","Global",1)~THEN TR_Arkan Intro
@700
DO~SetGlobal("TR_ArkanJob","Global",2)~
=@701
END
++@702 + Intro2
++@703 + Intro2

CHAIN
IF~~ THEN TR_Arkan Intro2
@704
=@710
END
++@711  + Intro3
++@712  + Intro3
++@713  + Intro3

CHAIN
IF~~ THEN TR_Arkan Intro3
@714
=@715
=@716
END
++@717 + Intro4
++@718 + Intro4

CHAIN
IF~~ THEN TR_Arkan Intro4
@719
END
++@720 + Intro5
++@721 + Intro5

CHAIN
IF~~ THEN TR_Arkan Intro5
@722 DO~AddJournalEntry(@724,QUEST)~ EXIT

CHAIN
IF~GlobalGT("TR_ArkanJob","Global",1)GlobalLT("TR_ArkanJob","Global",10)~THEN TR_Arkan Wait
@723 EXIT



CHAIN
IF~Global("TR_ArkanJob","Global",10)~THEN TR_Arkan Final
@709
DO~SetGlobal("TR_ArkanJob","Global",11) TakePartyItem("TR_APap")~
=@705
END
++@706 + Final2
++@707 + Final2

CHAIN
IF~~THEN TR_Arkan Final2
@708 DO~SetGlobal("ShadowWork","GLOBAL",1) EscapeAreaDestroy(45)~EXIT

CHAIN
IF WEIGHT #-9 ~Global("TR_ArkanJob","Global",2) AreaCheck("bd7200")~THEN Arnman04  Mitsu1
@730
DO~SetGlobal("TR_ArkanJob","Global",3)~
=#39038
END
++@731 + Mitsu2
++@732 + Mitsu3

CHAIN
IF~~THEN Arnman04  Mitsu2
@733
END
IF~~THEN + Mitsu4

CHAIN
IF~~THEN Arnman04  Mitsu3
@734
END
++@735 + Mitsu4

CHAIN
IF~~THEN Arnman04  Mitsu4
@736
=#39041
=@737
END
++@738 + Mitsu5
++@739 + Mitsu5
++@740 + Mitsu5
++@741 + Mitsu5

CHAIN
IF~~THEN Arnman04  Mitsu5
@742
=@743
END
++@744 + Mitsu6

CHAIN
IF~~THEN Arnman04  Mitsu6
#48686 DO~AddJournalEntry(@726,QUEST)~EXIT

CHAIN
IF WEIGHT #-9 ~GlobalGT("TR_ArkanJob","Global",2)GlobalLT("TR_ArkanJob","Global",9) AreaCheck("bd7200")~THEN Arnman04  Mitsuw
@745
END
++@746 + Mitsuw2
+~GlobalGT("TR_ArkanJob","Global",4)Global("TRToldEd","LOCALS",0)~+@756 DO~SetGlobal("TRToldEd","LOCALS",1)~ + Mitsuw3
+~Global("TR_ArkanJob","Global",7)PartyHasItem("TR_APap")~+@758 DO~SetGlobal("TR_ArkanJob","Global",10)~ + Mitsuw4

CHAIN
IF~~THEN Arnman04  Mitsuw2
#39041 EXIT

CHAIN
IF~~THEN Arnman04  Mitsuw3
@757
=#39041 EXIT

CHAIN
IF~~THEN Arnman04  Mitsuw4
@761
=#39041 DO~AddJournalEntry(@760,QUEST) Wait(2) EscapeAreaDestroy(30)~ EXIT

CHAIN
IF WEIGHT #-9 ~Global("TR_ArkanJob","Global",3) AreaCheck("bd7220")~THEN Thief7 Overhear
@747
DO~SetGlobal("TR_ArkanJob","Global",4)~
==shthass1 @748
==Thief7 @749
==Thief7 @750
==shthass1 @751
==Thief7 @752
==shthass1 @753
==Thief7 @754 EXIT

CHAIN
IF~Global("TR_ArkanJob","Global",4)~THEN Tredwin Bugbear
@755 DO~SetGlobal("TR_ArkanJob","Global",5) AddJournalEntry(@727,QUEST) Wait(2)ReallyForceSpell(Myself,DRYAD_TELEPORT) ~EXIT