The $procTPDB function was removing id attributes only for 
the theories not handled by the Maude's built in unification 
algorithms. It is now removing all identity attributes.

Below, the output to the checks in the unordered-channel file.




duran@atenea02:~$ /usr/local/share/Tools/Maude27++/maude /home/duran/workspaceMaude/maude-formal-environment/src/mfe.maude /home/duran/workspaceMaude/maude-formal-environment/todos/bug-reports/verdejo3/unordered-channel.maude 
             \||||||||||||||||||/
           --- Welcome to Maude ---
             /||||||||||||||||||\
        Maude-ceta 2.7 built: Jul  9 2014 19:13:19
        Copyright 1997-2014 SRI International
         With CETA and termination checker extensions 
           Wed Jul 30 19:40:46 2014

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

rewrites: 80 in 4ms cpu (4ms real) (20000 rewrites/second)
The MTT has been set as current tool.

rewrites: 39 in 8ms cpu (5ms real) (4874 rewrites/second)
aprove is now the current external tool.

rewrites: 35885 in 60ms cpu (1673ms real) (598043 rewrites/second)
Success: The module UNORDERED-CHANNEL is terminating.

rewrites: 76 in 8ms cpu (8ms real) (9500 rewrites/second)
The CRC has been set as current tool.

rewrites: 384634 in 336ms cpu (334ms real) (1144672 rewrites/second)
Church-Rosser check for UNORDERED-CHANNEL
    All critical pairs have been joined.
    The specification is locally-confluent.
    The module is sort-decreasing.

rewrites: 91 in 8ms cpu (8ms real) (11373 rewrites/second)
The termination goal for the functional part of UNORDERED-CHANNEL has been
    submitted to MTT.
The functional part of module UNORDERED-CHANNEL has been checked terminating.
Success: The module is therefore Church-Rosser.
Success: The module UNORDERED-CHANNEL is Church-Rosser.

rewrites: 76 in 0ms cpu (0ms real) (~ rewrites/second)
The SCC has been set as current tool.

rewrites: 132725 in 52ms cpu (53ms real) (2552256 rewrites/second)
Sufficient completeness check for UNORDERED-CHANNEL
    Completeness counter-examples: true xor true with sort Bool
    Freeness counter-examples: none were found
    Analysis: it is not complete and it is sound
    Ground weak termination: not proved
    Ground sort-decreasingness: not proved

rewrites: 121 in 8ms cpu (8ms real) (15125 rewrites/second)
The sort-decreasingness goal for UNORDERED-CHANNEL has been submitted to CRC.
The termination goal for the functional part of UNORDERED-CHANNEL has been
    submitted to MTT.
Church-Rosser check for UNORDERED-CHANNEL
    The module is sort-decreasing.
Warning: The term true xor true was found to be a counterexample; since the
    analysis is incomplete, it may not be a real counterexample.

rewrites: 76 in 0ms cpu (0ms real) (~ rewrites/second)
The ChC has been set as current tool.

rewrites: 163285 in 112ms cpu (114ms real) (1457810 rewrites/second)
Coherence checking of UNORDERED-CHANNEL
    All critical pairs have been rewritten and no rewrite with rules can
    happen at non-overlapping positions of equations left-hand sides.
    The sufficient-completeness, termination and Church-Rosser properties
    must still be checked.

rewrites: 239 in 12ms cpu (8ms real) (19915 rewrites/second)
The Church-Rosser goal for UNORDERED-CHANNEL has been submitted to CRC.
The Sufficient-Completeness goal for UNORDERED-CHANNEL has been submitted to
    SCC.
The termination goal for the functional part of UNORDERED-CHANNEL has been
    submitted to MTT.
Sufficient completeness check for UNORDERED-CHANNEL
    Completeness counter-examples: true xor true with sort Bool
    Freeness counter-examples: none were found
    Analysis: it is not complete and it is sound
    Ground weak termination: proved
    Ground sort-decreasingness: proved
Church-Rosser check for UNORDERED-CHANNEL
    All critical pairs have been joined.
    The specification is locally-confluent.
    The specification is terminating, and therefore confluent.
    The module is sort-decreasing.
    Success: The module is therefore Church-Rosser.
The functional part of module UNORDERED-CHANNEL has been checked terminating.
The module UNORDERED-CHANNEL has been checked Church-Rosser.
Success: The module UNORDERED-CHANNEL is coherent.


Maude> 