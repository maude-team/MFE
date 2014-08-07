The example uses an operator _|=_ (from the SATISFACTION module) that 
cannot be handled by AProVE. The '|' symbol is replaced by 'vertical-bar'. 
Using AproVE as external tool (select external tool aprove .) we get 
the otuput below.



duran@atenea02:~$ /usr/local/share/Tools/Maude27++/maude /home/duran/workspaceMaude/maude-formal-environment/src/mfe.maude /home/duran/workspaceMaude/maude-formal-environment/todos/bug-reports/verdejo2/readers-writers-abs.maude 
             \||||||||||||||||||/
           --- Welcome to Maude ---
             /||||||||||||||||||\
        Maude-ceta 2.7 built: Jul  9 2014 19:13:19
        Copyright 1997-2014 SRI International
         With CETA and termination checker extensions 
           Wed Jul 30 17:58:38 2014

        Full Maude 2.7 June 18th 2014

The Maude Formal Environment 1.0b
    Inductive Theorem Prover - July 20th 2010
    Sufficient Completeness Checker 2a - August 2010
    Church-Rosser Checker 3n - December 17th 2012
    Coherence Checker 3n - December 17th 2012
    Maude Termination Tool 1.5i - July 7th 2012
    Equality Enrichments 0.999 - July 2nd 2012
    Equational Resolution Theorem Prover 0 - July 7th 2012
    General Logics - based Operational Termination 0.0 - July 8th 2014

rewrites: 5336 in 4ms cpu (4ms real) (1334000 rewrites/second)
The Maude Formal Environment 1.0b
    Inductive Theorem Prover - July 20th 2010
    Sufficient Completeness Checker 2a - August 2010
    Church-Rosser Checker 3n - December 17th 2012
    Coherence Checker 3n - December 17th 2012
    Maude Termination Tool 1.5i - July 7th 2012
    Equality Enrichments 0.999 - July 2nd 2012
    Equational Resolution Theorem Prover 0 - July 7th 2012
    General Logics - based Operational Termination 0.0 - July 8th 2014

rewrites: 80 in 8ms cpu (5ms real) (9998 rewrites/second)
The MTT has been set as current tool.

rewrites: 39 in 4ms cpu (5ms real) (9750 rewrites/second)
aprove is now the current external tool.

rewrites: 32749 in 40ms cpu (3664ms real) (818684 rewrites/second)
Success: The module READERS-WRITERS-PREDS is terminating.

rewrites: 31325 in 88ms cpu (1926ms real) (355945 rewrites/second)
Success: The module READERS-WRITERS-ABS is terminating.

rewrites: 76 in 12ms cpu (10ms real) (6332 rewrites/second)
The CRC has been set as current tool.

rewrites: 625922 in 520ms cpu (519ms real) (1203622 rewrites/second)
Church-Rosser check for READERS-WRITERS-PREDS
    All critical pairs have been joined.
    The specification is locally-confluent.
    The module is sort-decreasing.

rewrites: 92 in 8ms cpu (9ms real) (11498 rewrites/second)
The termination goal for the functional part of READERS-WRITERS-PREDS has been
    submitted to MTT.
The functional part of module READERS-WRITERS-PREDS has been checked
    terminating.
Success: The module is therefore Church-Rosser.
Success: The module READERS-WRITERS-PREDS is Church-Rosser.

rewrites: 690585 in 508ms cpu (507ms real) (1359333 rewrites/second)
Church-Rosser check for READERS-WRITERS-ABS
    All critical pairs have been joined.
    The specification is locally-confluent.
    The module is sort-decreasing.

rewrites: 91 in 12ms cpu (9ms real) (7583 rewrites/second)
The termination goal for the functional part of READERS-WRITERS-ABS has been
    submitted to MTT.
The functional part of module READERS-WRITERS-ABS has been checked terminating.
Success: The module is therefore Church-Rosser.
Success: The module READERS-WRITERS-ABS is Church-Rosser.

rewrites: 76 in 0ms cpu (1ms real) (~ rewrites/second)
The SCC has been set as current tool.

rewrites: 103891 in 48ms cpu (48ms real) (2164260 rewrites/second)
Sufficient completeness check for READERS-WRITERS-PREDS
    Completeness counter-examples: true xor true with sort Bool
    Freeness counter-examples: none were found
    Analysis: it is not complete and it is sound
    Ground weak termination: not proved
    Ground sort-decreasingness: not proved

rewrites: 123 in 12ms cpu (9ms real) (10249 rewrites/second)
The sort-decreasingness goal for READERS-WRITERS-PREDS has been submitted to
    CRC.
The termination goal for the functional part of READERS-WRITERS-PREDS has been
    submitted to MTT.
Church-Rosser check for READERS-WRITERS-PREDS
    The module is sort-decreasing.
Warning: The term true xor true was found to be a counterexample; since the
    analysis is incomplete, it may not be a real counterexample.

rewrites: 106874 in 44ms cpu (44ms real) (2428788 rewrites/second)
Sufficient completeness check for READERS-WRITERS-ABS
    Completeness counter-examples: true xor true with sort Bool
    Freeness counter-examples: < s(s(0)),0 > with sort RWState
    Analysis: it is not complete and it is sound
    Ground weak termination: not proved
    Ground sort-decreasingness: not proved

rewrites: 121 in 12ms cpu (10ms real) (10082 rewrites/second)
The sort-decreasingness goal for READERS-WRITERS-ABS has been submitted to CRC.
The termination goal for the functional part of READERS-WRITERS-ABS has been
    submitted to MTT.
Church-Rosser check for READERS-WRITERS-ABS
    The module is sort-decreasing.
Warning: The term true xor true was found to be a counterexample; since the
    analysis is incomplete, it may not be a real counterexample.

rewrites: 76 in 0ms cpu (1ms real) (~ rewrites/second)
The ChC has been set as current tool.

rewrites: 133193 in 112ms cpu (111ms real) (1189148 rewrites/second)
Coherence checking of READERS-WRITERS-PREDS
    All critical pairs have been rewritten and no rewrite with rules can
    happen at non-overlapping positions of equations left-hand sides.
    The sufficient-completeness, termination and Church-Rosser properties
    must still be checked.

rewrites: 242 in 12ms cpu (10ms real) (20166 rewrites/second)
The Church-Rosser goal for READERS-WRITERS-PREDS has been submitted to CRC.
The Sufficient-Completeness goal for READERS-WRITERS-PREDS has been submitted
    to SCC.
The termination goal for the functional part of READERS-WRITERS-PREDS has been
    submitted to MTT.
Sufficient completeness check for READERS-WRITERS-PREDS
    Completeness counter-examples: true xor true with sort Bool
    Freeness counter-examples: none were found
    Analysis: it is not complete and it is sound
    Ground weak termination: proved
    Ground sort-decreasingness: proved
Church-Rosser check for READERS-WRITERS-PREDS
    All critical pairs have been joined.
    The specification is locally-confluent.
    The specification is terminating, and therefore confluent.
    The module is sort-decreasing.
    Success: The module is therefore Church-Rosser.
The functional part of module READERS-WRITERS-PREDS has been checked
    terminating.
The module READERS-WRITERS-PREDS has been checked Church-Rosser.
Success: The module READERS-WRITERS-PREDS is coherent.

rewrites: 137487 in 108ms cpu (109ms real) (1272945 rewrites/second)
Coherence checking of READERS-WRITERS-ABS
    All critical pairs have been rewritten and no rewrite with rules can
    happen at non-overlapping positions of equations left-hand sides.
    The sufficient-completeness, termination and Church-Rosser properties
    must still be checked.

rewrites: 243 in 12ms cpu (11ms real) (20248 rewrites/second)
The Church-Rosser goal for READERS-WRITERS-ABS has been submitted to CRC.
The Sufficient-Completeness goal for READERS-WRITERS-ABS has been submitted to
    SCC.
The termination goal for the functional part of READERS-WRITERS-ABS has been
    submitted to MTT.
Sufficient completeness check for READERS-WRITERS-ABS
    Completeness counter-examples: true xor true with sort Bool
    Freeness counter-examples: < s(s(0)),0 > with sort RWState
    Analysis: it is not complete and it is sound
    Ground weak termination: proved
    Ground sort-decreasingness: proved
Church-Rosser check for READERS-WRITERS-ABS
    All critical pairs have been joined.
    The specification is locally-confluent.
    The specification is terminating, and therefore confluent.
    The module is sort-decreasing.
    Success: The module is therefore Church-Rosser.
The functional part of module READERS-WRITERS-ABS has been checked terminating.
The module READERS-WRITERS-ABS has been checked Church-Rosser.
Success: The module READERS-WRITERS-ABS is coherent.

Maude> 
