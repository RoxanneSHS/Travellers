BEGIN TR_Cowl1
BEGIN TR_Cowl2
BEGIN TR_Valyg
BEGIN TR_Sonja
BEGIN TR_Vamp
BEGIN TR_CHIL1
BEGIN TR_CHIL2

//Valygar

CHAIN
IF~AreaCheck("bg2900")Global("TR_ValyBG1","Global",1)~THEN TR_Cowl1 Hunt1
@101
DO~SetGlobal("TR_ValyBG1","Global",2)~
==TR_Cowl2 @102
==TR_Cowl2 @103
==TR_Cowl2 @104
END
++@105 + Hunt2
++@106 + Hunt2
++@107 + Hunt2

CHAIN
IF ~~ THEN TR_Cowl1 Hunt2
@108
==TR_Cowl2 @109 DO~Enemy()~
==TR_Cowl2 @110 DO~Enemy()~EXIT

CHAIN
IF~AreaCheck("bg2900")Global("TR_ValyBG1","Global",3)~ THEN TR_Valyg Val01
@111
DO~SetGlobal("TR_ValyBG1","Global",4)~
END
++@112 + Val02
++@113 + Val02
++@114 + Val02

CHAIN
IF~~THEN TR_Valyg Val02
@115
=@116
END
++@117 DO~GiveItemCreate("arow02",Player1,10,0,0)~+ Val03
++@118 DO~SetGlobal("TR_ValyBG1","Global",5)~ + Val04
++@119 + Val03

CHAIN
IF~~THEN TR_Valyg Val03
@120 EXIT

CHAIN
IF~~THEN TR_Valyg Val04
@121 EXIT

EXTEND_BOTTOM Valygar 0
+ ~Global("TR_ValyBG1","Global",4)~ + @131 + 15
END

//Samia

CHAIN
IF WEIGHT #-41~AreaCheck("bg4100") Global("trdoomsayer","Global",1)~THEN Samia Idol01
@200
DO~SetGlobal("trdoomsayer","Global",2)~
END
++@201 + Idol02
++@202 + Idol02

CHAIN
IF~~THEN Samia Idol02
@203
END
++@204 + Idol03
++@205 + Idol03

CHAIN
IF~~THEN Samia Idol03
@206
=@207
=@208
END
++@209 + Idol04
++@210 + Idol05
++@211 + Idol05

CHAIN
IF~~THEN Samia Idol04
@212 
END
IF~~THEN + Idol06

CHAIN
IF~~THEN Samia Idol05
@213 
END
IF~~THEN + Idol06

CHAIN
IF~~THEN Samia Idol06
@214
=@215
END
++@216 DO~SetGlobal("trdoomsayer","Global",3)GiveGoldForce(2000) TakePartyItem("misc48")EscapeAreaDestroy(45)~EXIT
++@217 DO~SetGlobal("trdoomsayer","Global",3)~ + Idol07
++@218 + Idol08
++@220 + Idol09

CHAIN
IF~~THEN Samia Idol07
@216 DO~GiveGoldForce(2500)TakePartyItem("misc48")EscapeAreaDestroy(45)~EXIT

CHAIN
IF~~THEN Samia Idol08
@219
END
++@216 DO~SetGlobal("trdoomsayer","Global",3)GiveGoldForce(2500)TakePartyItem("misc48")EscapeAreaDestroy(45)~EXIT
++@220 + Idol09

CHAIN
IF~~THEN Samia Idol09
@221 EXIT

CHAIN
IF WEIGHT #-41~AreaCheck("bg4100") Global("trdoomsayer","Global",2)~THEN Samia Idol11
@222
=@215
END
+~PartyHasItem("MISC48")~+@216 DO~SetGlobal("trdoomsayer","Global",3)GiveGoldForce(2000) TakePartyItem("misc48") EscapeAreaDestroy(45)~EXIT
+~PartyHasItem("MISC48")~+@217 + Idol07
+~PartyHasItem("MISC48")~+@218 + Idol08
+~PartyHasItem("MISC48")~+@220 + Idol09
++@223 + Idol12

CHAIN
IF~~THEN Samia Idol12
@224 DO~EscapeAreaDestroy(45)~EXIT


//Sir Sarles
CHAIN
IF WEIGHT #-9~Global("TR_SarlPri","BG5400",1)~ THEN SCSarles prism1
@300
DO~SetGlobal("TR_SarlPri","BG5400",2)~
END
++@301 + prism2
++@302 + prism2
++@303 + prism2

CHAIN
IF~~ THEN SCSarles prism2
@304
END
++@305 + prism3
++@306 + prism4

CHAIN
IF~~ THEN SCSarles prism3
@307
=@308
END
+~CheckStatLT(Player1,14,CHR)~+@309 +Prism5
+~CheckStatLT(Player1,14,CHR)~+@310 +Prism5
+~CheckStatGT(Player1,13,CHR)~+@309 + Prism6
+~CheckStatGT(Player1,13,CHR)~+@310 + Prism6
IF~InParty("Safana")!StateCheck("Safana",CD_STATE_NOTVALID)~THEN EXTERN SafanJ PrismSaf

CHAIN
IF~~ THEN SCSarles prism4
@307
= #28661 DO~EscapeAreaDestroy(45)~EXIT

APPEND SafanJ
IF~~THEN BEGIN PrismSaf
SAY @310
IF~~THEN EXTERN SCSarles Prism7
END
END

CHAIN
IF~~ THEN SCSarles Prism7
@311
DO~GiveItemCreate("misc43","Safana",2,0,0)~
==SafanJ @312
==SCSarles @313 DO~EscapeAreaDestroy(45)~EXIT

CHAIN
IF~~ THEN SCSarles Prism5
@314
= #28661 DO~EscapeAreaDestroy(45)~EXIT

CHAIN
IF~~ THEN SCSarles Prism6
@315
DO~GiveItemCreate("misc43",Player1,2,0,0)~
END
++@316 + prism8
++@317 + prism9

CHAIN
IF~~ THEN SCSarles prism8
@313 DO~EscapeAreaDestroy(45)~EXIT

CHAIN
IF~~ THEN SCSarles prism9
#28661 DO~EscapeAreaDestroy(45)~EXIT

//Galileo
ALTER_TRANS Galile BEGIN 2 END BEGIN 0 END BEGIN "ACTION" ~~ "EPILOGUE" ~GOTO s66~ END

ALTER_TRANS Galile BEGIN 3 END BEGIN 0 END BEGIN "ACTION" ~~ "EPILOGUE" ~GOTO s66~ END

APPEND GALILE
IF~~THEN BEGIN s66
SAY@2566
IF~~THEN REPLY@2567GOTO s67
END

IF~~THEN BEGIN s67
SAY@2568
IF~~THEN REPLY@2569GOTO 4
END
END

//The barmaid and the vampire
CHAIN
IF~Global("TR_SonVamp","Global",1)~ THEN TR_Sonja Ulgo1
@401
DO~SetGlobal("TR_SonVamp","Global",2)~
END
++@402 + Ulgo2
++@403 + Ulgo2
++@404 + Ulgo2

CHAIN
IF~~THEN TR_Sonja Ulgo2
@405
=@406
END
++@407 + Ulgo3
++@408 + Ulgo3

CHAIN
IF~~THEN TR_Sonja Ulgo3
@409
=@410
END
++@411 + Ulgo4

CHAIN
IF~~THEN TR_Sonja Ulgo4
@412
END
++@413 + Ulgo5
++@414 + Ulgo5

CHAIN
IF~~THEN TR_Sonja Ulgo5
@415
=@416
END
++@417 + Ulgo6
++@418 + Ulgo7

CHAIN
IF~~THEN TR_Sonja Ulgo6
@419
END
IF~~THEN + Ulgo7

CHAIN
IF~~THEN TR_Sonja Ulgo7
@420
END
++@421 + Ulgo8
++@424 + Ulgo9

CHAIN
IF~~THEN TR_Sonja Ulgo8
@422
=@423 EXIT

CHAIN
IF~~THEN TR_Sonja Ulgo9
@423 EXIT

CHAIN
IF~AreaCheck("BG1001")~THEN TR_Vamp Ulgo11
@425 DO~RealSetGlobalTimer("TR_KenRet","BG1001",30) SetGlobal("TR_Ken","BG1001",4)~ EXIT

CHAIN
IF~Global("TR_SonVamp","Global",2)~ THEN TR_Sonja Ulgo21
@426
END
++@427 + Ulgo22
++@428 + Ulgo22
+~!PartyHasItem("TR_Pend")~+@429 + Ulgo22
+~PartyHasItem("TR_Pend")~+@430 DO~SetGlobal("TR_SonVamp","Global",3) TakePartyItem("TR_Pend")~ + Ulgo23

CHAIN
IF~~THEN TR_Sonja Ulgo22
@432 EXIT

CHAIN
IF~~THEN TR_Sonja Ulgo23
@431 DO~MoveToPoint([353.746]) Wait(2) DestroySelf()~EXIT

EXTEND_TOP Thalan 35 #3
IF~Global("TR_SonVamp","Global",2) Global("TR_AskThalan","BG3202",0)~THEN REPLY @433 DO~SetGlobal("TR_AskThalan","BG3202",1)~ GOTO Vamp1
END

EXTEND_TOP Thalan 1 #3
IF~Global("TR_SonVamp","Global",2) Global("TR_AskThalan","BG3202",0)~THEN REPLY @433 DO~SetGlobal("TR_AskThalan","BG3202",1)~ GOTO Vamp1
END

CHAIN
IF~~THEN Thalan Vamp1
@434 DO~AddJournalEntry(@436,QUEST)~EXIT

EXTEND_TOP KELDDA 0 #1
IF~Global("TR_SonVamp","Global",2) Global("TR_AskKeld","BG3402",0)~THEN REPLY @433 DO~SetGlobal("TR_Askkeld","BG3402",1)~ GOTO Vamp2
END

CHAIN
IF~~THEN Keldda Vamp2
@440
END
++@441 DO~SetGlobal("TR_KnowGond","Global",1)~ + Vamp3
++@442 DO~SetGlobal("TR_KnowGond","Global",1)~ + Vamp3
++@443 DO~SetGlobal("TR_KnowGond","Global",1)~ + Vamp3

CHAIN
IF~~THEN Keldda Vamp3
@444 DO~AddJournalEntry(@437,QUEST)~EXIT

EXTEND_TOP PGOND 0 #1
IF~Global("TR_KnowGond","Global",1) ~THEN REPLY @433 GOTO Gond2
IF~Global("TR_KnowGond","Global",4)PartyHasItem("TR_Pend2")PartyHasItem("Misc42")PartyGoldGT(999)~THEN REPLY @464 GOTO Pend2
END

CHAIN
IF~~THEN PGOND Gond2
@440
=@439
END
++@445 + Gond3
++@446 + Gond3
++@447 + Gond3
++@448 + Gond5

CHAIN
IF~~THEN PGOND Gond3
@449
=@450
=@451
=@452
END
++@453 DO ~TakePartyGold(500)~+ Gond4
++@454 DO~SetGlobal("TR_KnowDivi","Global",1)~ + Gond5
++@448 + Gond5

CHAIN
IF~~THEN PGOND Gond5
@455 EXIT

CHAIN
IF~~THEN PGOND Gond4
@456
DO~SetGlobal("TR_KnowGond","Global",2)~
=@457 DO~AddJournalEntry(@438,QUEST)~EXIT

EXTEND_TOP DIVINE 1 #1
IF~Global("TR_KnowGond","Global",1) Global("TR_KnowDivi","Global",1) ~THEN REPLY @458 DO~AddJournalEntry(@438,QUEST)~ GOTO Divi2
IF~Global("TR_KnowGond","Global",1) Global("TRAskGond","BG0726",0)~THEN REPLY @433 DO~SetGlobal("TRAskGond","BG0726",1)~ GOTO Divi3
END

CHAIN
IF~~THEN  DIVINE Divi2
@459 DO~SetGlobal("TR_KnowGond","Global",2)~EXIT

CHAIN
IF~~THEN  DIVINE Divi3
@460 EXIT

CHAIN
IF~Global("TR_KnowGond","Global",3)~ THEN TR_CHIL1 Bandits1
@470
DO~SetGlobal("TR_KnowGond","Global",4)~
END
++@471 + Bandits2
++@472 + Bandits4
++#200211  + Bandits3

CHAIN
IF~~THEN TR_CHIL1 Bandits2
#200208 DO~Shout(1) Enemy() Attack(NearestEnemyOf(Myself))~ EXIT

CHAIN
IF~~THEN TR_CHIL1 Bandits3
#200207 DO~Shout(1) Enemy() Attack(NearestEnemyOf(Myself))~ EXIT

CHAIN
IF~~THEN TR_CHIL1 Bandits4
@477 DO~GiveItem("TR_Pend2",Player1)TakePartyGold(200)~EXIT

CHAIN
IF~Global("TR_KnowGond","Global",4)~ THEN TR_CHIL2  Bandits5
@473
==TR_CHIL1 @474
==TR_CHIL2 @475
==TR_CHIL1 @476 DO~Shout(1) Enemy() Attack(NearestEnemyOf(Myself))~ EXIT

CHAIN
IF~~THEN PGOND Pend2
@465
=@466 DO~SetGlobal("TR_KnowGond","Global",5) ClearAllActions() Wait(1)StartCutSceneMode() StartCutScene("TR_cut1") ~EXIT