BEGIN ~DELIBRAR~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @2275
  IF ~~ THEN REPLY @2290 GOTO 1
  IF ~~ THEN REPLY @2291 GOTO 3
  IF ~~ THEN REPLY @2292 GOTO 4
  IF ~~ THEN REPLY @2293 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @2277
  IF ~~ THEN REPLY @2294 GOTO 2
  IF ~~ THEN REPLY @2295 GOTO 3
  IF ~~ THEN REPLY @2297 GOTO 4
  IF ~!Alignment(LastTalkedToBy,MASK_LAWFUL)
      CheckStatGT(LastTalkedToBy,12,INT)
      !GlobalGT("Geelo_Trick","GLOBAL",0)~ THEN REPLY @19139 DO ~SetGlobal("Geelo_Trick","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @19143 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @2282
  IF ~~ THEN REPLY @2302 DO ~StartStore("DE_Lib",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @2303 GOTO 3
  IF ~~ THEN REPLY @2304 GOTO 4
  IF ~~ THEN REPLY @2317 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @2287
  IF ~~ THEN REPLY @2305 GOTO 1
  IF ~~ THEN REPLY @2306 GOTO 4
  IF ~~ THEN REPLY @2307 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @2288
  IF ~~ THEN REPLY @2308 GOTO 3
  IF ~~ THEN REPLY @2309 GOTO 1
  IF ~~ THEN REPLY @2312 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 5
  SAY @2289
  IF ~~ THEN REPLY @2313 GOTO 3
  IF ~~ THEN REPLY @2314 GOTO 4
  IF ~~ THEN REPLY @2315 GOTO 1
  IF ~!Alignment(LastTalkedToBy,MASK_LAWFUL)
      CheckStatGT(LastTalkedToBy,12,INT)
      !GlobalGT("Geelo_Trick","GLOBAL",0)~ THEN REPLY @19131 DO ~SetGlobal("Geelo_Trick","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @19134 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @19128
  IF ~~ THEN REPLY @19130 EXIT
END
