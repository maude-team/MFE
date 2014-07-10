---- Implementation of the techniques for proving operational termination of declarative logics
---- Based on the paper 
---- by Salvador Lucas and JosŽ Meseguer
---- Proving Operational Termination of declarative Programs in General Logics
---- To appear in PPDP'14 

set trace off .
set trace select on .
trace select metaParse 
             input 
             .
----set trace include off . 
set print conceal off .


(select tool GLOT .)

(ct LAMBDA-CALCULUS .)

(check termination CTRS x  y z | a -> a <= b -> x .)

eof
      
(check termination CTRS x |  
      a -> a <= b -> x, c -> x ;
      b -> d <= d -> x, e -> x ; 
      c -> d <= d -> x, e -> x .)
      
red 
metaParse(fmod 'GRAMMAR is
  including 'QID-LIST .
  including 'GLOT-SIGN .
  sorts none .
  none
  op 'bubble : 'QidList -> '@Bubble@ [special(
    id-hook('Bubble, '1 '-1 '`( '`)) 
    op-hook('qidListSymbol, '__, 'QidList 'QidList, 'QidList) 
    op-hook('qidSymbol, '<Qids>, nil, 'Qid))] .
  op 'neTokenList : 'QidList -> '@NeTokenList@ [special(
    id-hook('Bubble, '1 '-1 '`( '`)) 
    op-hook('qidListSymbol, '__, 'QidList 'QidList, 'QidList) 
    op-hook('qidSymbol, '<Qids>, nil, 'Qid) 
    id-hook('Exclude, '.))] .
  op 'sortToken : 'Qid -> '@SortToken@ [special(
    id-hook('Bubble, '1 '1) 
    op-hook('qidSymbol, '<Qids>, nil, 'Qid) 
    id-hook('Exclude, '`[ '`] '< 'to '`, '. '`( '`) '`{ '`} ': 'ditto
    'precedence 'prec 'gather 'assoc 'associative 'comm 'commutative 'ctor
    'constructor 'id: 'strat 'strategy 'poly 'memo 'memoization 'iter 'frozen
    'config 'object 'msg 'metadata 'nonexec 'variant))] .
  op 'token : 'Qid -> '@Token@ [special(
    id-hook('Bubble, '1 '1) 
    op-hook('qidSymbol, '<Qids>, nil, 'Qid))] .
  op 'viewToken : 'Qid -> '@ViewToken@ [special(
    id-hook('Bubble, '1 '1) 
    op-hook('qidSymbol, '<Qids>, nil, 'Qid))] .
  none
  none
endfm, 'CTRS 'x '| 'a '-> 'a '<= 'b '-> 'x '., '@Input@) .

      