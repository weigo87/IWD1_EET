BEGIN ~DLEHLAND~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8401
  IF ~~ THEN REPLY @8402 GOTO 1
  IF ~Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @8476 GOTO 12
  IF ~~ THEN REPLY @8403 DO ~StartStore("SHLehlan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8404 GOTO 2
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @8405
  IF ~~ THEN REPLY @8406 DO ~StartStore("SHLehlan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8407 GOTO 3
  IF ~~ THEN REPLY @8408 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @8409
  IF ~~ THEN REPLY @8410 GOTO 3
  IF ~~ THEN REPLY @8411 DO ~StartStore("SHLehlan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8412 GOTO 4
  IF ~~ THEN REPLY @8413 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8414
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 4
  SAY @8415
  IF ~~ THEN REPLY @8416 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @8417
  IF ~~ THEN REPLY @8418 GOTO 6
  IF ~~ THEN REPLY @8419 GOTO 7
  IF ~~ THEN REPLY @8420 GOTO 8
  IF ~~ THEN REPLY @8421 GOTO 9
  IF ~~ THEN REPLY @8422 DO ~StartStore("SHLehlan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @8424
  IF ~~ THEN REPLY @8425 GOTO 5
  IF ~~ THEN REPLY @8426 GOTO 7
  IF ~~ THEN REPLY @8427 GOTO 8
  IF ~~ THEN REPLY @8428 GOTO 9
  IF ~~ THEN REPLY @8429 DO ~StartStore("SHLehlan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @8431
  IF ~~ THEN REPLY @8425 GOTO 5
  IF ~~ THEN REPLY @8433 GOTO 6
  IF ~~ THEN REPLY @8420 GOTO 8
  IF ~~ THEN REPLY @8421 GOTO 9
  IF ~~ THEN REPLY @8422 DO ~StartStore("SHLehlan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @8439
  IF ~~ THEN REPLY @8425 GOTO 5
  IF ~~ THEN REPLY @8433 GOTO 6
  IF ~~ THEN REPLY @8447 GOTO 7
  IF ~~ THEN REPLY @8421 GOTO 9
  IF ~~ THEN REPLY @8422 DO ~StartStore("SHLehlan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @8451
  IF ~~ THEN REPLY @8425 GOTO 5
  IF ~~ THEN REPLY @8433 GOTO 6
  IF ~~ THEN REPLY @8447 GOTO 7
  IF ~~ THEN REPLY @8455 GOTO 8
  IF ~~ THEN REPLY @8422 DO ~StartStore("SHLehlan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @376 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 10
  SAY @8458
  IF ~Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @8476 GOTO 12
  IF ~~ THEN REPLY @8459 GOTO 1
  IF ~~ THEN REPLY @8403 DO ~StartStore("SHLehlan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8461 GOTO 2
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @8463
  IF ~~ THEN REPLY @8425 GOTO 5
  IF ~~ THEN REPLY @8433 GOTO 6
  IF ~~ THEN REPLY @8466 GOTO 7
  IF ~~ THEN REPLY @8420 GOTO 8
  IF ~~ THEN REPLY @8421 GOTO 9
  IF ~~ THEN REPLY @8422 DO ~StartStore("SHLehlan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8470 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @8471
  IF ~~ THEN REPLY @8472 GOTO 1
  IF ~~ THEN REPLY @8403 DO ~StartStore("SHLehlan",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8404 GOTO 2
  IF ~~ THEN REPLY @376 EXIT
END
