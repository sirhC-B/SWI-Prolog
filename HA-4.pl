erstes_element(X,[X|_]).

vorletztes_element(X,[X,_]).
vorletztes_element(X,[_|Rest]):-vorletztes_element(X,Rest).


haenge_an(X,[],[X]).
haenge_an(X,[H|T],[H|L]):-haenge_an(X,T,L).

loesche_alle(X,[],_).
loesche_alle(X,[X|Liste],[Liste|_]):-loesche_alle(X,Liste,Liste).

loesche_alle().