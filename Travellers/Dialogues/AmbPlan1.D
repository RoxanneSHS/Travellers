CHAIN
IF WEIGHT #-6~Global("TR_ambushplan","Global",0)~ THEN BDDAZZO TR0
#265669
END
++ #265670 + TR3
++ #265671 + TR1
++ #265672 + TR3

CHAIN
IF ~~ THEN BDDAZZO TR1
#265673
END
++ #265674 + TR3
++ #265675 + TR2
++ #265676 + TR2

CHAIN
IF ~~ THEN BDDAZZO TR2
#265677
END
IF ~~ THEN DO ~StartCutSceneMode()StartCutScene("Trcut601")~ EXIT

CHAIN
IF ~~ THEN BDDAZZO TR3
#265678
END
IF ~~ THEN DO ~StartCutSceneMode() StartCutScene("Trcut601")~ EXIT


CHAIN
IF WEIGHT #-21~Global("TR_ambushplan","Global",1)~THEN Maevar InSod
@920
DO~SetGlobal("TR_ambushplan","Global",2)~
==BDIreni @921
==Maevar @922
==BDIreni @923 DO~StartCutScene("Trcut602")~ EXIT

