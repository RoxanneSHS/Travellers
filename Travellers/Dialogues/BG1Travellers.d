BEGIN TR_Cowl1
BEGIN TR_Cowl2
BEGIN TR_Valyg

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
IF WEIGHT #-41~AreaCheck("bg4100") Global("trdoomsayer","bg4100",1)~THEN Samia Idol01
@200
DO~SetGlobal("trdoomsayer","bg4100",2)~
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
++@216 DO~GiveGoldForce(2000) TakePartyItem("misc48")EscapeAreaDestroy(45)~EXIT
++@217 + Idol07
++@218 + Idol08
++@220 + Idol09

CHAIN
IF~~THEN Samia Idol07
@216 DO~GiveGoldForce(2500)TakePartyItem("misc48")EscapeAreaDestroy(45)~EXIT

CHAIN
IF~~THEN Samia Idol08
@219
END
++@216 DO~GiveGoldForce(2500)TakePartyItem("misc48")EscapeAreaDestroy(45)~EXIT
++@220 + Idol09

CHAIN
IF~~THEN Samia Idol09
@221 EXIT

CHAIN
IF WEIGHT #-41~AreaCheck("bg4100") Global("trdoomsayer","bg4100",2)~THEN Samia Idol11
@222
=@215
END
+~PartyHasItem("MISC48")~+@216 DO~GiveGoldForce(2000) TakePartyItem("misc48") EscapeAreaDestroy(45)~EXIT
+~PartyHasItem("MISC48")~+@217 + Idol07
+~PartyHasItem("MISC48")~+@218 + Idol08
+~PartyHasItem("MISC48")~+@220 + Idol09
++@223 + Idol12

CHAIN
IF~~THEN Samia Idol12
@224 DO~EscapeAreaDestroy(45)~EXIT