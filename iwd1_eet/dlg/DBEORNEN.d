BEGIN ~DBEORNEN~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @23579
  IF ~~ THEN REPLY @23581 GOTO 1
  IF ~~ THEN REPLY @24069 GOTO 2
  IF ~~ THEN REPLY @23585 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @23587
  IF ~~ THEN REPLY @23590 GOTO 3
  IF ~~ THEN REPLY @23593 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @23594
  IF ~~ THEN REPLY @988 GOTO 3
  IF ~~ THEN REPLY @23593 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @23603
  IF ~~ THEN REPLY @23613 DO ~SetGlobal("Know_Lair","GLOBAL",1)~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @23614
  IF ~~ THEN REPLY @23630 DO ~AddXP2DA("ID1EX10H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@26705)
                              AddJournalEntry(@23553,QUEST)~ GOTO 5
  IF ~~ THEN REPLY @23631 GOTO 6
  IF ~~ THEN REPLY @23632 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @23637
  IF ~~ THEN REPLY @23640 GOTO 6
  IF ~~ THEN REPLY @23632 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @23642
  IF ~~ THEN REPLY @23643 DO ~SetGlobal("ID9600_Visited","GLOBAL",1)
                              StartCutScene("IdLu9600")~ EXIT
  IF ~~ THEN REPLY @23644 EXIT
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)~ THEN BEGIN 7
  SAY @23645
  IF ~Global("Know_Lair","GLOBAL",1)~ THEN REPLY @23646 GOTO 6
  IF ~!Global("Know_Lair","GLOBAL",1)~ THEN REPLY @23581 GOTO 1
  IF ~!Global("Know_Lair","GLOBAL",1)~ THEN REPLY @24069 GOTO 2
  IF ~~ THEN REPLY @23649 EXIT
END

IF WEIGHT #0
~Global("ID9600_Visited","GLOBAL",1)~ THEN BEGIN 8
  SAY @25782
  IF ~~ THEN REPLY @25783 GOTO 9
  IF ~~ THEN REPLY @25784 GOTO 10
  IF ~~ THEN REPLY @25785 GOTO 11
  IF ~~ THEN REPLY @25786 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @25787
  IF ~~ THEN REPLY @25784 GOTO 10
  IF ~~ THEN REPLY @25785 GOTO 11
  IF ~~ THEN REPLY @25434 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @25791
  IF ~~ THEN REPLY @25783 GOTO 9
  IF ~~ THEN REPLY @25785 GOTO 11
  IF ~~ THEN REPLY @25434 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @25795
  IF ~~ THEN REPLY @25783 GOTO 9
  IF ~~ THEN REPLY @25784 GOTO 10
  IF ~~ THEN REPLY @25434 EXIT
END
