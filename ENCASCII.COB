       IDENTIFICATION DIVISION.
       PROGRAM-ID. "ENCODE-ASCII".

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 STRING-POINTER PIC 9.

       LINKAGE SECTION.
       01 ASCII-CHARACTER.
           03 CHAR-CODE PIC 999.
           03 COBOL-STRING PIC X(6).
      *        CONTROL CHARACTERS.
               88 ASCII-NUL VALUE "NUL".
               88 ASCII-SOH VALUE "SOH".
               88 ASCII-STX VALUE "STX".
               88 ASCII-ETX VALUE "ETX".
               88 ASCII-EOT VALUE "EOT".
               88 ASCII-ENQ VALUE "ENQ".
               88 ASCII-ACK VALUE "ACK".
               88 ASCII-BEL VALUE "BEL".
               88 ASCII-BS  VALUE "BS".
               88 ASCII-TAB VALUE "TAB".
               88 ASCII-LF  VALUE "LF".
               88 ASCII-VT  VALUE "VT".
               88 ASCII-FF  VALUE "FF".
               88 ASCII-CR  VALUE "CR".
               88 ASCII-SO  VALUE "SO".
               88 ASCII-SI  VALUE "SI".
               88 ASCII-DLE VALUE "DLE".
               88 ASCII-DC1 VALUE "DC1".
               88 ASCII-DC2 VALUE "DC2".
               88 ASCII-DC3 VALUE "DC3".
               88 ASCII-DC4 VALUE "DC4".
               88 ASCII-NAK VALUE "NAK".
               88 ASCII-SYN VALUE "SYN".
               88 ASCII-ETB VALUE "ETB".
               88 ASCII-CAN VALUE "CAN".
               88 ASCII-EM  VALUE "EM".
               88 ASCII-SUB VALUE "SUB".
               88 ASCII-ESC VALUE "ESC".
               88 ASCII-FS  VALUE "FS".
               88 ASCII-GS  VALUE "GS".
               88 ASCII-RS  VALUE "RS".
               88 ASCII-US  VALUE "US".
      *        PRINTABLE CHARACTERS.
               88 ASCII-SPC  VALUE SPACE.
               88 ASCII-EXC  VALUE "EXC".
      *        ASCII-DBQT DEFINED BELOW UNDER FIRST-CHAR.
               88 ASCII-PND  VALUE "PND".
               88 ASCII-DLR  VALUE "$".
               88 ASCII-PCNT VALUE "PCNT".
               88 ASCII-AMP  VALUE "AMP".
               88 ASCII-SGQT VALUE "SGQT".
               88 ASCII-LPRN VALUE "(".
               88 ASCII-RPRN VALUE ")".
               88 ASCII-STAR VALUE "*".
               88 ASCII-PLUS VALUE "+".
               88 ASCII-COMA VALUE ",".
               88 ASCII-DASH VALUE "-".
               88 ASCII-DOT  VALUE ".".
               88 ASCII-SLSH VALUE "/".
               88 ASCII-NUM0 VALUE 0.
               88 ASCII-NUM1 VALUE 1.
               88 ASCII-NUM2 VALUE 2.
               88 ASCII-NUM3 VALUE 3.
               88 ASCII-NUM4 VALUE 4.
               88 ASCII-NUM5 VALUE 5.
               88 ASCII-NUM6 VALUE 6.
               88 ASCII-NUM7 VALUE 7.
               88 ASCII-NUM8 VALUE 8.
               88 ASCII-NUM9 VALUE 9.
               88 ASCII-COLN VALUE "COLN".
               88 ASCII-SCLN VALUE ";".
               88 ASCII-LESS VALUE "<".
               88 ASCII-EQL  VALUE "=".
               88 ASCII-GRTR VALUE ">".
               88 ASCII-QUES VALUE "QUES".
               88 ASCII-AT   VALUE "AT".
               88 ASCII-LETA VALUES "A".
               88 ASCII-LETB VALUES "B".
               88 ASCII-LETC VALUES "C".
               88 ASCII-LETD VALUES "D".
               88 ASCII-LETE VALUES "E".
               88 ASCII-LETF VALUES "F".
               88 ASCII-LETG VALUES "G".
               88 ASCII-LETH VALUES "H".
               88 ASCII-LETI VALUES "I".
               88 ASCII-LETJ VALUES "J".
               88 ASCII-LETK VALUES "K".
               88 ASCII-LETL VALUES "L".
               88 ASCII-LETM VALUES "M".
               88 ASCII-LETN VALUES "N".
               88 ASCII-LETO VALUES "O".
               88 ASCII-LETP VALUES "P".
               88 ASCII-LETQ VALUES "Q".
               88 ASCII-LETR VALUES "R".
               88 ASCII-LETS VALUES "S".
               88 ASCII-LETT VALUES "T".
               88 ASCII-LETU VALUES "U".
               88 ASCII-LETV VALUES "V".
               88 ASCII-LETW VALUES "W".
               88 ASCII-LETX VALUES "X".
               88 ASCII-LETY VALUES "Y".
               88 ASCII-LETZ VALUES "Z".
               88 ASCII-LOWA VALUES "LOWA".
               88 ASCII-LOWB VALUES "LOWB".
               88 ASCII-LOWC VALUES "LOWC".
               88 ASCII-LOWD VALUES "LOWD".
               88 ASCII-LOWE VALUES "LOWE".
               88 ASCII-LOWF VALUES "LOWF".
               88 ASCII-LOWG VALUES "LOWG".
               88 ASCII-LOWH VALUES "LOWH".
               88 ASCII-LOWI VALUES "LOWI".
               88 ASCII-LOWJ VALUES "LOWJ".
               88 ASCII-LOWK VALUES "LOWK".
               88 ASCII-LOWL VALUES "LOWL".
               88 ASCII-LOWM VALUES "LOWM".
               88 ASCII-LOWN VALUES "LOWN".
               88 ASCII-LOWO VALUES "LOWO".
               88 ASCII-LOWP VALUES "LOWP".
               88 ASCII-LOWQ VALUES "LOWQ".
               88 ASCII-LOWR VALUES "LOWR".
               88 ASCII-LOWS VALUES "LOWS".
               88 ASCII-LOWT VALUES "LOWT".
               88 ASCII-LOWU VALUES "LOWU".
               88 ASCII-LOWV VALUES "LOWV".
               88 ASCII-LOWW VALUES "LOWW".
               88 ASCII-LOWX VALUES "LOWX".
               88 ASCII-LOWY VALUES "LOWY".
               88 ASCII-LOWZ VALUES "LOWZ".
               88 ASCII-LSQB VALUE "LSQB".
               88 ASCII-BKSL VALUE "BKSL".
               88 ASCII-RSQB VALUE "RSQB".
               88 ASCII-CRT  VALUE "CRT".
               88 ASCII-UNDS VALUE "UNDS".
               88 ASCII-BKTK VALUE "BKTK".
               88 ASCII-LCRB VALUE "LCRB".
               88 ASCII-PIPE VALUE "PIPE".
               88 ASCII-RCRB VALUE "RCRB".
               88 ASCII-TLDE VALUE "TLDE".
      *        LONELY CONTROL CHAR
               88 ASCII-DEL VALUE "DEL".
           03 FIRST-CHAR REDEFINES COBOL-STRING PIC X.
               88 ASCII-DBQT VALUE QUOTE.

       PROCEDURE DIVISION USING ASCII-CHARACTER.
       IF ASCII-NUL THEN
           MOVE 0 TO CHAR-CODE
       ELSE IF ASCII-SOH THEN
           MOVE 1 TO CHAR-CODE
       ELSE IF ASCII-STX THEN
           MOVE 2 TO CHAR-CODE
       ELSE IF ASCII-ETX THEN
           MOVE 3 TO CHAR-CODE
       ELSE IF ASCII-EOT THEN
           MOVE 4 TO CHAR-CODE
       ELSE IF ASCII-ENQ THEN
           MOVE 5 TO CHAR-CODE
       ELSE IF ASCII-ACK THEN
           MOVE 6 TO CHAR-CODE
       ELSE IF ASCII-BEL THEN
           MOVE 7 TO CHAR-CODE
       ELSE IF ASCII-BS THEN
           MOVE 8 TO CHAR-CODE
       ELSE IF ASCII-TAB THEN
           MOVE 9 TO CHAR-CODE
       ELSE IF ASCII-LF THEN
           MOVE 10 TO CHAR-CODE
       ELSE IF ASCII-VT THEN
           MOVE 11 TO CHAR-CODE
       ELSE IF ASCII-FF THEN
           MOVE 12 TO CHAR-CODE
       ELSE IF ASCII-CR THEN
           MOVE 13 TO CHAR-CODE
       ELSE IF ASCII-SO THEN
           MOVE 14 TO CHAR-CODE
       ELSE IF ASCII-SI THEN
           MOVE 15 TO CHAR-CODE
       ELSE IF ASCII-DLE THEN
           MOVE 16 TO CHAR-CODE
       ELSE IF ASCII-DC1 THEN
           MOVE 17 TO CHAR-CODE
       ELSE IF ASCII-DC2 THEN
           MOVE 18 TO CHAR-CODE
       ELSE IF ASCII-DC3 THEN
           MOVE 19 TO CHAR-CODE
       ELSE IF ASCII-DC4 THEN
           MOVE 20 TO CHAR-CODE
       ELSE IF ASCII-NAK THEN
           MOVE 21 TO CHAR-CODE
       ELSE IF ASCII-SYN THEN
           MOVE 22 TO CHAR-CODE
       ELSE IF ASCII-ETB THEN
           MOVE 23 TO CHAR-CODE
       ELSE IF ASCII-CAN THEN
           MOVE 24 TO CHAR-CODE
       ELSE IF ASCII-EM THEN
           MOVE 25 TO CHAR-CODE
       ELSE IF ASCII-SUB THEN
           MOVE 26 TO CHAR-CODE
       ELSE IF ASCII-ESC THEN
           MOVE 27 TO CHAR-CODE
       ELSE IF ASCII-FS THEN
           MOVE 28 TO CHAR-CODE
       ELSE IF ASCII-GS THEN
           MOVE 29 TO CHAR-CODE
       ELSE IF ASCII-RS THEN
           MOVE 30 TO CHAR-CODE
       ELSE IF ASCII-US THEN
           MOVE 31 TO CHAR-CODE
       ELSE IF ASCII-SPC THEN
           MOVE 32 TO CHAR-CODE
       ELSE IF ASCII-EXC THEN
           MOVE 33 TO CHAR-CODE
       ELSE IF ASCII-DBQT THEN
           MOVE 34 TO CHAR-CODE
       ELSE IF ASCII-PND THEN
           MOVE 35 TO CHAR-CODE
       ELSE IF ASCII-DLR THEN
           MOVE 36 TO CHAR-CODE
       ELSE IF ASCII-PCNT THEN
           MOVE 37 TO CHAR-CODE
       ELSE IF ASCII-AMP THEN
           MOVE 38 TO CHAR-CODE
       ELSE IF ASCII-SGQT THEN
           MOVE 39 TO CHAR-CODE
       ELSE IF ASCII-LPRN THEN
           MOVE 40 TO CHAR-CODE
       ELSE IF ASCII-RPRN THEN
           MOVE 41 TO CHAR-CODE
       ELSE IF ASCII-STAR THEN
           MOVE 42 TO CHAR-CODE
       ELSE IF ASCII-PLUS THEN
           MOVE 43 TO CHAR-CODE
       ELSE IF ASCII-COMA THEN
           MOVE 44 TO CHAR-CODE
       ELSE IF ASCII-DASH THEN
           MOVE 45 TO CHAR-CODE
       ELSE IF ASCII-DOT THEN
           MOVE 46 TO CHAR-CODE
       ELSE IF ASCII-SLSH THEN
           MOVE 47 TO CHAR-CODE
       ELSE IF ASCII-NUM0 THEN
           MOVE 48 TO CHAR-CODE
       ELSE IF ASCII-NUM1 THEN
           MOVE 49 TO CHAR-CODE
       ELSE IF ASCII-NUM2 THEN
           MOVE 50 TO CHAR-CODE
       ELSE IF ASCII-NUM3 THEN
           MOVE 51 TO CHAR-CODE
       ELSE IF ASCII-NUM4 THEN
           MOVE 52 TO CHAR-CODE
       ELSE IF ASCII-NUM5 THEN
           MOVE 53 TO CHAR-CODE
       ELSE IF ASCII-NUM6 THEN
           MOVE 54 TO CHAR-CODE
       ELSE IF ASCII-NUM7 THEN
           MOVE 55 TO CHAR-CODE
       ELSE IF ASCII-NUM8 THEN
           MOVE 56 TO CHAR-CODE
       ELSE IF ASCII-NUM9 THEN
           MOVE 57 TO CHAR-CODE
       ELSE IF ASCII-COLN THEN
           MOVE 58 TO CHAR-CODE
       ELSE IF ASCII-SCLN THEN
           MOVE 59 TO CHAR-CODE
       ELSE IF ASCII-LESS THEN
           MOVE 60 TO CHAR-CODE
       ELSE IF ASCII-EQL THEN
           MOVE 61 TO CHAR-CODE
       ELSE IF ASCII-GRTR THEN
           MOVE 62 TO CHAR-CODE
       ELSE IF ASCII-QUES THEN
           MOVE 63 TO CHAR-CODE
       ELSE IF ASCII-AT THEN
           MOVE 64 TO CHAR-CODE
       ELSE IF ASCII-LETA THEN
           MOVE 65 TO CHAR-CODE
       ELSE IF ASCII-LETB THEN
           MOVE 66 TO CHAR-CODE
       ELSE IF ASCII-LETC THEN
           MOVE 67 TO CHAR-CODE
       ELSE IF ASCII-LETD THEN
           MOVE 68 TO CHAR-CODE
       ELSE IF ASCII-LETE THEN
           MOVE 69 TO CHAR-CODE
       ELSE IF ASCII-LETF THEN
           MOVE 70 TO CHAR-CODE
       ELSE IF ASCII-LETG THEN
           MOVE 71 TO CHAR-CODE
       ELSE IF ASCII-LETH THEN
           MOVE 72 TO CHAR-CODE
       ELSE IF ASCII-LETI THEN
           MOVE 73 TO CHAR-CODE
       ELSE IF ASCII-LETJ THEN
           MOVE 74 TO CHAR-CODE
       ELSE IF ASCII-LETK THEN
           MOVE 75 TO CHAR-CODE
       ELSE IF ASCII-LETL THEN
           MOVE 76 TO CHAR-CODE
       ELSE IF ASCII-LETM THEN
           MOVE 77 TO CHAR-CODE
       ELSE IF ASCII-LETN THEN
           MOVE 78 TO CHAR-CODE
       ELSE IF ASCII-LETO THEN
           MOVE 79 TO CHAR-CODE
       ELSE IF ASCII-LETP THEN
           MOVE 80 TO CHAR-CODE
       ELSE IF ASCII-LETQ THEN
           MOVE 81 TO CHAR-CODE
       ELSE IF ASCII-LETR THEN
           MOVE 82 TO CHAR-CODE
       ELSE IF ASCII-LETS THEN
           MOVE 83 TO CHAR-CODE
       ELSE IF ASCII-LETT THEN
           MOVE 84 TO CHAR-CODE
       ELSE IF ASCII-LETU THEN
           MOVE 85 TO CHAR-CODE
       ELSE IF ASCII-LETV THEN
           MOVE 86 TO CHAR-CODE
       ELSE IF ASCII-LETW THEN
           MOVE 87 TO CHAR-CODE
       ELSE IF ASCII-LETX THEN
           MOVE 88 TO CHAR-CODE
       ELSE IF ASCII-LETY THEN
           MOVE 89 TO CHAR-CODE
       ELSE IF ASCII-LETZ THEN
           MOVE 90 TO CHAR-CODE
       ELSE IF ASCII-LSQB THEN
           MOVE 91 TO CHAR-CODE
       ELSE IF ASCII-BKSL THEN
           MOVE 92 TO CHAR-CODE
       ELSE IF ASCII-RSQB THEN
           MOVE 93 TO CHAR-CODE
       ELSE IF ASCII-CRT THEN
           MOVE 94 TO CHAR-CODE
       ELSE IF ASCII-UNDS THEN
           MOVE 95 TO CHAR-CODE
       ELSE IF ASCII-BKTK THEN
           MOVE 96 TO CHAR-CODE
       ELSE IF ASCII-LOWA THEN
           MOVE 97 TO CHAR-CODE
       ELSE IF ASCII-LOWB THEN
           MOVE 98 TO CHAR-CODE
       ELSE IF ASCII-LOWC THEN
           MOVE 99 TO CHAR-CODE
       ELSE IF ASCII-LOWD THEN
           MOVE 100 TO CHAR-CODE
       ELSE IF ASCII-LOWE THEN
           MOVE 101 TO CHAR-CODE
       ELSE IF ASCII-LOWF THEN
           MOVE 102 TO CHAR-CODE
       ELSE IF ASCII-LOWG THEN
           MOVE 103 TO CHAR-CODE
       ELSE IF ASCII-LOWH THEN
           MOVE 104 TO CHAR-CODE
       ELSE IF ASCII-LOWI THEN
           MOVE 105 TO CHAR-CODE
       ELSE IF ASCII-LOWJ THEN
           MOVE 106 TO CHAR-CODE
       ELSE IF ASCII-LOWK THEN
           MOVE 107 TO CHAR-CODE
       ELSE IF ASCII-LOWL THEN
           MOVE 108 TO CHAR-CODE
       ELSE IF ASCII-LOWM THEN
           MOVE 109 TO CHAR-CODE
       ELSE IF ASCII-LOWN THEN
           MOVE 110 TO CHAR-CODE
       ELSE IF ASCII-LOWO THEN
           MOVE 111 TO CHAR-CODE
       ELSE IF ASCII-LOWP THEN
           MOVE 112 TO CHAR-CODE
       ELSE IF ASCII-LOWQ THEN
           MOVE 113 TO CHAR-CODE
       ELSE IF ASCII-LOWR THEN
           MOVE 114 TO CHAR-CODE
       ELSE IF ASCII-LOWS THEN
           MOVE 115 TO CHAR-CODE
       ELSE IF ASCII-LOWT THEN
           MOVE 116 TO CHAR-CODE
       ELSE IF ASCII-LOWU THEN
           MOVE 117 TO CHAR-CODE
       ELSE IF ASCII-LOWV THEN
           MOVE 118 TO CHAR-CODE
       ELSE IF ASCII-LOWW THEN
           MOVE 119 TO CHAR-CODE
       ELSE IF ASCII-LOWX THEN
           MOVE 120 TO CHAR-CODE
       ELSE IF ASCII-LOWY THEN
           MOVE 121 TO CHAR-CODE
       ELSE IF ASCII-LOWZ THEN
           MOVE 122 TO CHAR-CODE
       ELSE IF ASCII-LCRB THEN
           MOVE 123 TO CHAR-CODE
       ELSE IF ASCII-PIPE THEN
           MOVE 124 TO CHAR-CODE
       ELSE IF ASCII-RCRB THEN
           MOVE 125 TO CHAR-CODE
       ELSE IF ASCII-TLDE THEN
           MOVE 126 TO CHAR-CODE
       ELSE IF ASCII-DEL THEN
           MOVE 127 TO CHAR-CODE
       ELSE MOVE COBOL-STRING TO CHAR-CODE.
       EXIT PROGRAM.
