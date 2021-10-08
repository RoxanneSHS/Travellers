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

//Surgeon in Underdark
CHAIN
IF WEIGHT #-6~Global("SurgeonStory","GLOBAL",4)~THEN Surgeo Underd
@810
DO~SetGlobal("SurgeonStory","GLOBAL",5)~
END
++@811 + 2
++@812 + 2

//Surgeon in ToB
CHAIN
IF WEIGHT #-6~Global("SurgeonStory","GLOBAL",6)~THEN Surgeo Sarad1
@805
DO~SetGlobal("SurgeonStory","GLOBAL",7)~
END
++@806 + Sarad2
++@807 + Sarad2
++@808 + Sarad2

CHAIN
IF~~THEN Surgeo Sarad2
@809
END
IF~~THEN GOTO 2

//A nasty party
ADD_TRANS_ACTION Kirian BEGIN 2 END BEGIN 0 END ~SetGlobal("TR_KiriLetGo","Global",1)~

CHAIN
IF WEIGHT #-7~Global("TR_KiriLetGo","Global",2)~THEN Kirian Thistime
@540
DO~SetGlobal("TR_KiriLetGo","Global",3)~
END
++ @541 + ThistimeE
++ @542 + ThistimeE
++ @543 + ThistimeE

CHAIN
IF~~ THEN Kirian ThistimeE
@544
DO~ActionOverride("LINDIN",Enemy()) ActionOverride("BAERIN",Enemy()) ActionOverride("PETER",Enemy()) Enemy()~EXIT