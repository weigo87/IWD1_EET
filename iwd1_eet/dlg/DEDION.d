BEGIN ~DEDION~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @21525
  IF ~GlobalLT("Hjollder_Quest","GLOBAL",4)~ THEN REPLY @21526 GOTO 1
  IF ~GlobalLT("Hjollder_Quest","GLOBAL",4)~ THEN REPLY @21527 GOTO 2
  IF ~~ THEN REPLY @21528 GOTO 3
  IF ~~ THEN REPLY @21529 GOTO 2
  IF ~~ THEN REPLY @21530 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @21531
  IF ~~ THEN REPLY @1428 GOTO 2
  IF ~~ THEN REPLY @21528 GOTO 3
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @21533 GOTO 3
  IF ~~ THEN REPLY @21534 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @21535
  IF ~CheckStatGT(LastTalkedToBy,12,INT)~ THEN REPLY @21536 DO ~SetGlobal("Know_Edion","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @21528 DO ~SetGlobal("Know_Edion","GLOBAL",1)~ GOTO 3
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @21533 DO ~SetGlobal("Know_Edion","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @21539 DO ~SetGlobal("Know_Edion","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @21540
  IF ~~ THEN REPLY @21541 GOTO 4
  IF ~CheckStatGT(LastTalkedToBy,12,INT)~ THEN REPLY @21536 DO ~SetGlobal("Know_Edion","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @21543 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @21544
  IF ~~ THEN REPLY @21545 DO ~SetGlobal("Know_Edion_Wizard","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @21543 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @21547
  IF ~~ THEN REPLY @21548 GOTO 6
  IF ~~ THEN REPLY @21549 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @21550
  IF ~~ THEN REPLY @21551 GOTO 7
  IF ~~ THEN REPLY @21543 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @21553
  IF ~~ THEN REPLY @21554 GOTO 8
  IF ~Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @21555 GOTO 9
  IF ~Class(LastTalkedToBy,MAGE_ALL)
      !Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @21555 GOTO 9
  IF ~~ THEN REPLY @21557 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @21558
  IF ~~ THEN REPLY @21559 GOTO 10
  IF ~Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @21555 GOTO 9
  IF ~Class(LastTalkedToBy,MAGE_ALL)
      !Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @21555 GOTO 9
  IF ~~ THEN REPLY @21562 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @21563
  IF ~~ THEN REPLY @21564 GOTO 10
  IF ~~ THEN REPLY @21565 GOTO 11
  IF ~~ THEN REPLY @21566 GOTO 12
  IF ~~ THEN REPLY @21567 GOTO 13
  IF ~~ THEN REPLY @21568 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @21569
  IF ~~ THEN REPLY @21565 GOTO 11
  IF ~~ THEN REPLY @21566 GOTO 12
  IF ~~ THEN REPLY @21567 GOTO 13
  IF ~~ THEN REPLY @21543 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @21573
  IF ~~ THEN REPLY @21574 DO ~StartStore("Edion",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @21575 GOTO 12
  IF ~~ THEN REPLY @21576 GOTO 13
  IF ~~ THEN REPLY @21543 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @21578
  IF ~~ THEN REPLY @21579 DO ~StartStore("Edion",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @21580 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @21581 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @21582
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @21583
  IF ~~ THEN REPLY @21584 GOTO 15
  IF ~~ THEN REPLY @21585 GOTO 11
  IF ~~ THEN REPLY @21586 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @21587
  IF ~~ THEN REPLY @21585 GOTO 11
  IF ~~ THEN REPLY @21543 EXIT
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)~ THEN BEGIN 16
  SAY @21592
  IF ~~ THEN REPLY @21590 GOTO 4
  IF ~~ THEN REPLY @21567 GOTO 13
  IF ~Global("Know_Edion_Wizard","GLOBAL",1)~ THEN REPLY @21593 GOTO 11
  IF ~~ THEN REPLY @21594 EXIT
END

IF WEIGHT #0
~Global("SPRITE_IS_DEADYoungNed","GLOBAL",1)~ THEN BEGIN 17
  SAY @21595
  IF ~~ THEN DO ~Enemy()~ EXIT
END
