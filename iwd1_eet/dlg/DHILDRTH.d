BEGIN ~DHILDRTH~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @676
  IF ~~ THEN REPLY @683 DO ~SetGlobal("Know_Hildreth","GLOBAL",1)~ GOTO 3
  IF ~!Race(LastTalkedToBy,DWARF)~ THEN REPLY @684 DO ~SetGlobal("Know_Hildreth","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @685 DO ~SetGlobal("Know_Hildreth","GLOBAL",1)~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @677
  IF ~~ THEN REPLY @686 GOTO 5
  IF ~~ THEN REPLY @687 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @678
  IF ~~ THEN REPLY @688 GOTO 4
  IF ~~ THEN REPLY @689 GOTO 4
  IF ~~ THEN REPLY @690 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @679
  IF ~~ THEN REPLY @691 GOTO 5
  IF ~~ THEN REPLY @692 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @680
  IF ~~ THEN REPLY @693 GOTO 5
  IF ~~ THEN REPLY @694 EXIT
  IF ~~ THEN REPLY @695 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @681
  IF ~~ THEN REPLY @696 GOTO 6
  IF ~~ THEN REPLY @697 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @682
  IF ~~ THEN REPLY @698 EXIT
  IF ~~ THEN REPLY @699 EXIT
END
