BEGIN ~DCHILGEN~

IF ~RandomNum(10,1)~ THEN BEGIN 0
  SAY @354
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,2)~ THEN BEGIN 1
  SAY @355
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,3)~ THEN BEGIN 2
  SAY @356
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,4)~ THEN BEGIN 3
  SAY @357
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,5)~ THEN BEGIN 4
  SAY @358
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,6)~ THEN BEGIN 5
  SAY @359
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,7)~ THEN BEGIN 6
  SAY @360
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,8)~ THEN BEGIN 7
  SAY @361
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,9)~ THEN BEGIN 8
  SAY @362
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,10)~ THEN BEGIN 9
  SAY @363
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 10
  SAY @364
  IF ~~ THEN EXIT
END
