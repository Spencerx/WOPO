#!/bin/sh
${CC:-cc} -o channel.o -c channel.c
${COBC:-cobc} -x WOPO-CNF.COB PRINTCNF.COB
${COBC:-cobc} -x WOPO.COB IRC-MSG.COB PRINTCNF.COB DECASCII.COB ENCASCII.COB BF-RUN.COB channel.o

