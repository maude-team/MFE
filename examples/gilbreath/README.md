maude gilbreath.maude ../../src/mfe.maude
Maude> (select tool CRC .)
Maude> (ccr GILBREATH-ACU .)

duran@MacBook-Pro-PD gilbreath % maude gilbreath.maude ../../src/mfe.maude
		     \||||||||||||||||||/
		   --- Welcome to Maude ---
		     /||||||||||||||||||\
	     Maude 3.4 built: Mar 16 2024 16:45:55
	     Copyright 1997-2024 SRI International
		   Wed Jul  3 15:37:03 2024

	          Full Maude 3.3.1 Jan 22 2024

The Maude Formal Environment 1.0d
    Sufficient Completeness Checker 2a - August 2010
    Church-Rosser Checker 3s - February 3rd 2020
    Coherence Checker 3s - February 3rd 2020
    Maude Termination Tool 1.5k - February 3rd 2020

set include BOOL off

set include TRUTH-VALUE on

Maude> (select tool CRC .)
rewrites: 2925 in 2ms cpu (2ms real) (1460309 rewrites/second)
The CRC has been set as current tool.

Maude> (ccr GILBREATH-ACU .)
rewrites: 9820131556 in 10944570ms cpu (10835554ms real) (897260 rewrites/second)
Church-Rosser check for GILBREATH-ACU
The following critical pairs must be proved joinable:
  cp GILBREATH-ACU12022
    even(#5:List C1:Card)
    = even(black #5:List).
  cp GILBREATH-ACU12024
    even(C2:Card X@9:List)
    = even(black X@9:List).
  cp GILBREATH-ACU12025
    even(#6:List C2:Card X@9:List)
    = even(black #6:List X@9:List).
  cp GILBREATH-ACU12820
    even(#7:List C1:Card)
    = even(#1:Card #7:List).
  cp GILBREATH-ACU12821
    even(C2:Card X@9:List)
    = even(#1:Card X@9:List).
  cp GILBREATH-ACU12822
    even(#8:List C2:Card X@9:List)
    = even(#1:Card #8:List X@9:List).
  cp GILBREATH-ACU13239
    even(#2:List C2:Card X@9:List)
    = even(#2:List #1:Card X@9:List).
  cp GILBREATH-ACU13241
    even(#2:List X@5:List C2:Card)
    = even(#2:List #1:Card X@5:List).
  cp GILBREATH-ACU15118
    even(X@1:List C1:Card)
    = even(X@1:List black).
  cp GILBREATH-ACU16732
    even(X@1:List C1:Card)
    = even(X@1:List #2:Card).
	The module is sort-decreasing.

Maude> 
