BEGIN ~DLURE~

IF ~Global("Master_Quest","GLOBAL",2)~ THEN BEGIN 0
  SAY @27225
  IF ~~ THEN REPLY @27260 DO ~SetGlobal("Know_Luremaster","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @27261 DO ~SetGlobal("Know_Luremaster","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @27262 DO ~SetGlobal("Know_Luremaster","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @27263 DO ~SetGlobal("Know_Luremaster","GLOBAL",1)~ GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @27226
  IF ~~ THEN REPLY @27264 GOTO 2
  IF ~~ THEN REPLY @27265 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @27231
  IF ~~ THEN REPLY @27266 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @27232
  IF ~~ THEN REPLY @27267 GOTO 6
  IF ~~ THEN REPLY @27268 GOTO 7
  IF ~~ THEN REPLY @27269 GOTO 7
END

IF ~~ THEN BEGIN 4
  SAY @27234
  IF ~~ THEN REPLY @27270 GOTO 3
  IF ~~ THEN REPLY @27269 GOTO 3
END

IF ~~ THEN BEGIN 5
  SAY @27235
  IF ~~ THEN REPLY @27272 GOTO 3
  IF ~~ THEN REPLY @27270 GOTO 3
  IF ~~ THEN REPLY @27269 GOTO 3
END

IF ~~ THEN BEGIN 6
  SAY @27236
  IF ~~ THEN REPLY @27275 GOTO 7
  IF ~~ THEN REPLY @24061 GOTO 7
  IF ~~ THEN REPLY @27277 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @27237
  IF ~~ THEN REPLY @27278 GOTO 8
  IF ~~ THEN REPLY @27279 GOTO 8
  IF ~~ THEN REPLY @27280 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @27240
  IF ~~ THEN REPLY @27281 GOTO 9
  IF ~~ THEN REPLY @17803 GOTO 9
  IF ~~ THEN REPLY @288 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @27242
  IF ~~ THEN DO ~AddJournalEntry(@27206,QUEST)
                 StartCutSceneMode()
                 StartCutScene("csGBrdEx")~ EXIT
END

IF ~Global("Master_Quest","GLOBAL",3)~ THEN BEGIN 10
  SAY @27602
  IF ~~ THEN REPLY @27284 GOTO 11
  IF ~~ THEN REPLY @27285 GOTO 11
  IF ~~ THEN REPLY @27286 GOTO 12
  IF ~~ THEN REPLY @27287 GOTO 13
END

IF ~~ THEN BEGIN 11
  SAY @27244
  IF ~~ THEN REPLY @27288 GOTO 12
  IF ~~ THEN REPLY @27289 GOTO 13
  IF ~~ THEN REPLY @27290 GOTO 14
END

IF ~~ THEN BEGIN 12
  SAY @27245
  IF ~~ THEN REPLY @27291 GOTO 13
  IF ~~ THEN REPLY @27292 GOTO 14
END

IF ~~ THEN BEGIN 13
  SAY @27246
  IF ~~ THEN REPLY @27293 GOTO 15
  IF ~~ THEN REPLY @27294 GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @27247
  IF ~~ THEN REPLY @27270 GOTO 15
  IF ~~ THEN REPLY @27296 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @27248
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @27249
  IF ~~ THEN DO ~SetGlobal("Master_Quest","GLOBAL",4)
                 AddJournalEntry(@27208,QUEST)
                 StartCutSceneMode()
                 StartCutScene("csGBrdEx")~ EXIT
END

IF ~Global("Master_Quest","GLOBAL",4)~ THEN BEGIN 17
  SAY @27250
  IF ~~ THEN REPLY @27297 GOTO 18
  IF ~~ THEN REPLY @27298 GOTO 19
  IF ~~ THEN REPLY @27299 GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @27251
  IF ~~ THEN REPLY @27300 GOTO 20
  IF ~~ THEN REPLY @27277 GOTO 20
  IF ~~ THEN REPLY @27302 GOTO 20
END

IF ~~ THEN BEGIN 19
  SAY @27252
  IF ~~ THEN REPLY @27277 GOTO 20
  IF ~~ THEN REPLY @27302 GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @27253
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @27254
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @27255
  IF ~~ THEN DO ~SetGlobal("Master_Quest","GLOBAL",5)
                 AddJournalEntry(@27209,QUEST)
                 StartCutSceneMode()
                 StartCutScene("duDClose")~ EXIT
END

IF ~Global("Master_Quest","GLOBAL",5)~ THEN BEGIN 23
  SAY @27256
  IF ~~ THEN REPLY @27305 GOTO 24
  IF ~~ THEN REPLY @27306 GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @27257
  IF ~~ THEN REPLY @27307 GOTO 25
  IF ~~ THEN REPLY @27308 GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @27258
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @27259
  IF ~~ THEN DO ~SetGlobal("Master_Quest","GLOBAL",6)
                 Enemy()~ EXIT
END

IF ~Global("Master_Quest","GLOBAL",6)~ THEN BEGIN 27
  SAY @27603
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @27243
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @27605
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @27606
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @27607
  IF ~~ THEN DO ~//AddXPVar("Level_13_Hard", 0)
                 AddXP2DA("ID1EX12H")
                 StartCutSceneMode()
                 StartCutScene("duLurBye")~ EXIT
END
