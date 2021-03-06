       IDENTIFICATION DIVISION.
       PROGRAM-ID. "DECODE-ASCII".

       DATA DIVISION.
       LINKAGE SECTION.
       01 ASCII-CHARACTER.
           03 CHAR-CODE PIC 999.
      *        CONTROL CHARACTERS.
               88 ASCII-NUL VALUE 0.
               88 ASCII-SOH VALUE 1.
               88 ASCII-STX VALUE 2.
               88 ASCII-ETX VALUE 3.
               88 ASCII-EOT VALUE 4.
               88 ASCII-ENQ VALUE 5.
               88 ASCII-ACK VALUE 6.
               88 ASCII-BEL VALUE 7.
               88 ASCII-BS  VALUE 8.
               88 ASCII-TAB VALUE 9.
               88 ASCII-LF  VALUE 10.
               88 ASCII-VT  VALUE 11.
               88 ASCII-FF  VALUE 12.
               88 ASCII-CR  VALUE 13.
               88 ASCII-SO  VALUE 14.
               88 ASCII-SI  VALUE 15.
               88 ASCII-DLE VALUE 16.
               88 ASCII-DC1 VALUE 17.
               88 ASCII-DC2 VALUE 18.
               88 ASCII-DC3 VALUE 19.
               88 ASCII-DC4 VALUE 20.
               88 ASCII-NAK VALUE 21.
               88 ASCII-SYN VALUE 22.
               88 ASCII-ETB VALUE 23.
               88 ASCII-CAN VALUE 24.
               88 ASCII-EM  VALUE 25.
               88 ASCII-SUB VALUE 26.
               88 ASCII-ESC VALUE 27.
               88 ASCII-FS  VALUE 28.
               88 ASCII-GS  VALUE 29.
               88 ASCII-RS  VALUE 30.
               88 ASCII-US  VALUE 31.
      *        PRINTABLE CHARACTERS.
               88 ASCII-SPC  VALUE 32.
               88 ASCII-EXC  VALUE 33.
               88 ASCII-DBQT VALUE 34.
               88 ASCII-PND  VALUE 35.
               88 ASCII-DLR  VALUE 36.
               88 ASCII-PCNT VALUE 37.
               88 ASCII-AMP  VALUE 38.
               88 ASCII-SGQT VALUE 39.
               88 ASCII-LPRN VALUE 40.
               88 ASCII-RPRN VALUE 41.
               88 ASCII-STAR VALUE 42.
               88 ASCII-PLUS VALUE 43.
               88 ASCII-COMA VALUE 44.
               88 ASCII-DASH VALUE 45.
               88 ASCII-DOT  VALUE 46.
               88 ASCII-SLSH VALUE 47.
               88 ASCII-NUM0 VALUE 48.
               88 ASCII-NUM1 VALUE 49.
               88 ASCII-NUM2 VALUE 50.
               88 ASCII-NUM3 VALUE 51.
               88 ASCII-NUM4 VALUE 52.
               88 ASCII-NUM5 VALUE 53.
               88 ASCII-NUM6 VALUE 54.
               88 ASCII-NUM7 VALUE 55.
               88 ASCII-NUM8 VALUE 56.
               88 ASCII-NUM9 VALUE 57.
               88 ASCII-COLN VALUE 58.
               88 ASCII-SCLN VALUE 59.
               88 ASCII-LESS VALUE 60.
               88 ASCII-EQL  VALUE 61.
               88 ASCII-GRTR VALUE 62.
               88 ASCII-QUES VALUE 63.
               88 ASCII-AT   VALUE 64.
               88 ASCII-LETA VALUES 65, 97.
               88 ASCII-LETB VALUES 66, 98.
               88 ASCII-LETC VALUES 67, 99.
               88 ASCII-LETD VALUES 68, 100.
               88 ASCII-LETE VALUES 69, 101.
               88 ASCII-LETF VALUES 70, 102.
               88 ASCII-LETG VALUES 71, 103.
               88 ASCII-LETH VALUES 72, 104.
               88 ASCII-LETI VALUES 73, 105.
               88 ASCII-LETJ VALUES 74, 106.
               88 ASCII-LETK VALUES 75, 107.
               88 ASCII-LETL VALUES 76, 108.
               88 ASCII-LETM VALUES 77, 109.
               88 ASCII-LETN VALUES 78, 110.
               88 ASCII-LETO VALUES 79, 111.
               88 ASCII-LETP VALUES 80, 112.
               88 ASCII-LETQ VALUES 81, 113.
               88 ASCII-LETR VALUES 82, 114.
               88 ASCII-LETS VALUES 83, 115.
               88 ASCII-LETT VALUES 84, 116.
               88 ASCII-LETU VALUES 85, 117.
               88 ASCII-LETV VALUES 86, 118.
               88 ASCII-LETW VALUES 87, 119.
               88 ASCII-LETX VALUES 88, 120.
               88 ASCII-LETY VALUES 89, 121.
               88 ASCII-LETZ VALUES 90, 122.
               88 ASCII-LSQB VALUE 91.
               88 ASCII-BKSL VALUE 92.
               88 ASCII-RSQB VALUE 93.
               88 ASCII-CRT  VALUE 94.
               88 ASCII-UNDS VALUE 95.
               88 ASCII-BKTK VALUE 96.
               88 ASCII-LCRB VALUE 123.
               88 ASCII-PIPE VALUE 124.
               88 ASCII-RCRB VALUE 125.
               88 ASCII-TLDE VALUE 126.
      *        LONELY CONTROL CHAR
               88 ASCII-DEL VALUE 127.
           03 COBOL-STRING PIC X(6).
           03 FIRST-CHAR REDEFINES COBOL-STRING PIC X.

       PROCEDURE DIVISION USING ASCII-CHARACTER.
       MOVE SPACES TO COBOL-STRING.
       IF ASCII-NUL THEN
           MOVE "$NUL$" TO COBOL-STRING
       ELSE IF ASCII-SOH THEN
           MOVE "$SOH$" TO COBOL-STRING
       ELSE IF ASCII-STX THEN
           MOVE "$STX$" TO COBOL-STRING
       ELSE IF ASCII-ETX THEN
           MOVE "$ETX$" TO COBOL-STRING
       ELSE IF ASCII-EOT THEN
           MOVE "$EOT$" TO COBOL-STRING
       ELSE IF ASCII-ENQ THEN
           MOVE "$ENQ$" TO COBOL-STRING
       ELSE IF ASCII-ACK THEN
           MOVE "$ACK$" TO COBOL-STRING
       ELSE IF ASCII-BEL THEN
           MOVE "$BEL$" TO COBOL-STRING
       ELSE IF ASCII-BS THEN
           MOVE "$BS$" TO COBOL-STRING
       ELSE IF ASCII-TAB THEN
           MOVE "$TAB$" TO COBOL-STRING
       ELSE IF ASCII-LF THEN
           MOVE "$LF$" TO COBOL-STRING
       ELSE IF ASCII-VT THEN
           MOVE "$VT$" TO COBOL-STRING
       ELSE IF ASCII-FF THEN
           MOVE "$FF$" TO COBOL-STRING
       ELSE IF ASCII-CR THEN
           MOVE "$CR$" TO COBOL-STRING
       ELSE IF ASCII-SO THEN
           MOVE "$SO$" TO COBOL-STRING
       ELSE IF ASCII-SI THEN
           MOVE "$SI$" TO COBOL-STRING
       ELSE IF ASCII-DLE THEN
           MOVE "$DLE$" TO COBOL-STRING
       ELSE IF ASCII-DC1 THEN
           MOVE "$DC1$" TO COBOL-STRING
       ELSE IF ASCII-DC2 THEN
           MOVE "$DC2$" TO COBOL-STRING
       ELSE IF ASCII-DC3 THEN
           MOVE "$DC3$" TO COBOL-STRING
       ELSE IF ASCII-DC4 THEN
           MOVE "$DC4$" TO COBOL-STRING
       ELSE IF ASCII-NAK THEN
           MOVE "$NAK$" TO COBOL-STRING
       ELSE IF ASCII-SYN THEN
           MOVE "$SYN$" TO COBOL-STRING
       ELSE IF ASCII-ETB THEN
           MOVE "$ETB$" TO COBOL-STRING
       ELSE IF ASCII-CAN THEN
           MOVE "$CAN$" TO COBOL-STRING
       ELSE IF ASCII-EM THEN
           MOVE "$EM$" TO COBOL-STRING
       ELSE IF ASCII-SUB THEN
           MOVE "$SUB$" TO COBOL-STRING
       ELSE IF ASCII-ESC THEN
           MOVE "$ESC$" TO COBOL-STRING
       ELSE IF ASCII-FS THEN
           MOVE "$FS$" TO COBOL-STRING
       ELSE IF ASCII-GS THEN
           MOVE "$GS$" TO COBOL-STRING
       ELSE IF ASCII-RS THEN
           MOVE "$RS$" TO COBOL-STRING
       ELSE IF ASCII-US THEN
           MOVE "$US$" TO COBOL-STRING
       ELSE IF ASCII-SPC THEN
           MOVE SPACE TO COBOL-STRING
       ELSE IF ASCII-EXC THEN
           MOVE "$EXC$" TO COBOL-STRING
       ELSE IF ASCII-DBQT THEN
           MOVE SPACES TO COBOL-STRING
           MOVE QUOTE TO FIRST-CHAR
       ELSE IF ASCII-PND THEN
           MOVE "$PND$" TO COBOL-STRING
       ELSE IF ASCII-DLR THEN
           MOVE "$$" TO COBOL-STRING
       ELSE IF ASCII-PCNT THEN
           MOVE "$PCNT$" TO COBOL-STRING
       ELSE IF ASCII-AMP THEN
           MOVE "$AMP$" TO COBOL-STRING
       ELSE IF ASCII-SGQT THEN
           MOVE "$SGQT$" TO COBOL-STRING
       ELSE IF ASCII-LPRN THEN
           MOVE "(" TO COBOL-STRING
       ELSE IF ASCII-RPRN THEN
           MOVE ")" TO COBOL-STRING
       ELSE IF ASCII-STAR THEN
           MOVE "*" TO COBOL-STRING
       ELSE IF ASCII-PLUS THEN
           MOVE "+" TO COBOL-STRING
       ELSE IF ASCII-COMA THEN
           MOVE "," TO COBOL-STRING
       ELSE IF ASCII-DASH THEN
           MOVE "-" TO COBOL-STRING
       ELSE IF ASCII-DOT THEN
           MOVE "." TO COBOL-STRING
       ELSE IF ASCII-SLSH THEN
           MOVE "/" TO COBOL-STRING
       ELSE IF ASCII-NUM0 THEN
           MOVE "0" TO COBOL-STRING
       ELSE IF ASCII-NUM1 THEN
           MOVE "1" TO COBOL-STRING
       ELSE IF ASCII-NUM2 THEN
           MOVE "2" TO COBOL-STRING
       ELSE IF ASCII-NUM3 THEN
           MOVE "3" TO COBOL-STRING
       ELSE IF ASCII-NUM4 THEN
           MOVE "4" TO COBOL-STRING
       ELSE IF ASCII-NUM5 THEN
           MOVE "5" TO COBOL-STRING
       ELSE IF ASCII-NUM6 THEN
           MOVE "6" TO COBOL-STRING
       ELSE IF ASCII-NUM7 THEN
           MOVE "7" TO COBOL-STRING
       ELSE IF ASCII-NUM8 THEN
           MOVE "8" TO COBOL-STRING
       ELSE IF ASCII-NUM9 THEN
           MOVE "9" TO COBOL-STRING
       ELSE IF ASCII-COLN THEN
           MOVE "$COLN$" TO COBOL-STRING
       ELSE IF ASCII-SCLN THEN
           MOVE ";" TO COBOL-STRING
       ELSE IF ASCII-LESS THEN
           MOVE "<" TO COBOL-STRING
       ELSE IF ASCII-EQL THEN
           MOVE "=" TO COBOL-STRING
       ELSE IF ASCII-GRTR THEN
           MOVE ">" TO COBOL-STRING
       ELSE IF ASCII-QUES THEN
           MOVE "$QUES$" TO COBOL-STRING
       ELSE IF ASCII-AT THEN
           MOVE "$AT$" TO COBOL-STRING
       ELSE IF ASCII-LETA THEN
           MOVE "A" TO COBOL-STRING
       ELSE IF ASCII-LETB THEN
           MOVE "B" TO COBOL-STRING
       ELSE IF ASCII-LETC THEN
           MOVE "C" TO COBOL-STRING
       ELSE IF ASCII-LETD THEN
           MOVE "D" TO COBOL-STRING
       ELSE IF ASCII-LETE THEN
           MOVE "E" TO COBOL-STRING
       ELSE IF ASCII-LETF THEN
           MOVE "F" TO COBOL-STRING
       ELSE IF ASCII-LETG THEN
           MOVE "G" TO COBOL-STRING
       ELSE IF ASCII-LETH THEN
           MOVE "H" TO COBOL-STRING
       ELSE IF ASCII-LETI THEN
           MOVE "I" TO COBOL-STRING
       ELSE IF ASCII-LETJ THEN
           MOVE "J" TO COBOL-STRING
       ELSE IF ASCII-LETK THEN
           MOVE "K" TO COBOL-STRING
       ELSE IF ASCII-LETL THEN
           MOVE "L" TO COBOL-STRING
       ELSE IF ASCII-LETM THEN
           MOVE "M" TO COBOL-STRING
       ELSE IF ASCII-LETN THEN
           MOVE "N" TO COBOL-STRING
       ELSE IF ASCII-LETO THEN
           MOVE "O" TO COBOL-STRING
       ELSE IF ASCII-LETP THEN
           MOVE "P" TO COBOL-STRING
       ELSE IF ASCII-LETQ THEN
           MOVE "Q" TO COBOL-STRING
       ELSE IF ASCII-LETR THEN
           MOVE "R" TO COBOL-STRING
       ELSE IF ASCII-LETS THEN
           MOVE "S" TO COBOL-STRING
       ELSE IF ASCII-LETT THEN
           MOVE "T" TO COBOL-STRING
       ELSE IF ASCII-LETU THEN
           MOVE "U" TO COBOL-STRING
       ELSE IF ASCII-LETV THEN
           MOVE "V" TO COBOL-STRING
       ELSE IF ASCII-LETW THEN
           MOVE "W" TO COBOL-STRING
       ELSE IF ASCII-LETX THEN
           MOVE "X" TO COBOL-STRING
       ELSE IF ASCII-LETY THEN
           MOVE "Y" TO COBOL-STRING
       ELSE IF ASCII-LETZ THEN
           MOVE "Z" TO COBOL-STRING
       ELSE IF ASCII-LSQB THEN
           MOVE "$LSQB$" TO COBOL-STRING
       ELSE IF ASCII-BKSL THEN
           MOVE "$BKSL$" TO COBOL-STRING
       ELSE IF ASCII-RSQB THEN
           MOVE "$RSQB$" TO COBOL-STRING
       ELSE IF ASCII-CRT THEN
           MOVE "$CRT$" TO COBOL-STRING
       ELSE IF ASCII-UNDS THEN
           MOVE "$UNDS$" TO COBOL-STRING
       ELSE IF ASCII-BKTK THEN
           MOVE "$BKTK$" TO COBOL-STRING
       ELSE IF ASCII-LCRB THEN
           MOVE "$LCRB$" TO COBOL-STRING
       ELSE IF ASCII-PIPE THEN
           MOVE "$PIPE$" TO COBOL-STRING
       ELSE IF ASCII-RCRB THEN
           MOVE "$RCRB$" TO COBOL-STRING
       ELSE IF ASCII-TLDE THEN
           MOVE "$TLDE$" TO COBOL-STRING
       ELSE IF ASCII-DEL THEN
           MOVE "$DEL$" TO COBOL-STRING
       ELSE STRING "$", CHAR-CODE, "$" INTO COBOL-STRING.
       EXIT PROGRAM.
