%-------------------------------------------------------
% 
% Stammbaum
% 
%
%-------------------------------------------------------
maennlich(fred).
maennlich(stephen).
maennlich(henry).
maennlich(peter).
maennlich(john).
maennlich(george).
maennlich(richard).
maennlich(james).
maennlich(robert).

weiblich(mary).
weiblich(donna).
weiblich(pamela).
weiblich(julia).
weiblich(elizabeth).
weiblich(roberta).
weiblich(susan).
weiblich(harriet).
weiblich(catherine).
weiblich(melissa).

elternteil(john,donna).
elternteil(john,mary).
elternteil(john,george).
elternteil(catherine, donna).
elternteil(catherine,mary).
elternteil(catherine,george).

elternteil(pamela,james).
elternteil(george,james).

elternteil(mary,julia).
elternteil(mary,peter).
elternteil(richard,julia).
elternteil(richard,peter).

elternteil(robert,stephen).
elternteil(robert,henry).
elternteil(elizabeth,stephen).
elternteil(elizabeth,henry).

elternteil(henry,harriet).
elternteil(henry,susan).
elternteil(roberta,harriet).
elternteil(roberta,susan).

elternteil(peter,melissa).
elternteil(harriet,melissa).


%%%%%%%%%%%%%%%% REGELN %%%%%%%%%%%%%%%%

mutter(X,Y):- elternteil(X,Y),weiblich(X).
vater(X,Y):- elternteil(X,Y),maennlich(X).
kind(X,Y):- elternteil(Y,X).
sohn(X,Y):- kind(X,Y),maennlich(X).
tochter(X,Y):- kind(X,Y),weiblich(X).
verheiratet(X,Y):- elternteil(X,Kind),elternteil(Y,Kind),X\= Y.
schwiegermutter(X,Y):-verheiratet(Y,Z),mutter(X,Z).
schwiegervater(X,Y):-verheiratet(Y,Z),kind(Z,X),maennlich(X).
grossmutter(X,Y):- kind(Y,Z),kind(Z,X),weiblich(X).
grossvater(X,Y):- kind(Y,Z),kind(Z,X),maennlich(X).
bruder(X,Y):-elternteil(Z,X),elternteil(Z,Y),maennlich(X), X\= Y.
vorfahr(X,Y):-elternteil(X,Z),vorfahr(Z,Y).


geschwister(X,Y):-elternteil(Z,X),elternteil(Z,Y), X\= Y.
nichte(N,OnkelTante):-weiblich(N), elternteil(N,X),geschwister(X,OnkelTante).

