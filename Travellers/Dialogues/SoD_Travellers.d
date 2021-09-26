//Surgeon in SoD
CHAIN
IF WEIGHT #-6~Global("SurgeonStory","GLOBAL",2)~THEN Surgeo Bridge1
@800
DO~SetGlobal("SurgeonStory","GLOBAL",3)~
END
++@801 + Bridge2
++@802 + Bridge2
++@803 + Bridge2

CHAIN
IF~~THEN Surgeo Bridge2
@804
END
IF~~THEN GOTO 2