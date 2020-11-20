fuege_hinzu(X, Liste, Neue_liste):- Neue_liste = [X | Liste].

element(X,[X |_]).
element(X,[_|T]):- element(X,T).

loesche(_,[],[]).
loesche(X, [X | Rest], Rest):-!.
loesche(X, [Y | Rest1], [Y | Rest2]):-loesche(X,Rest1,Rest2).


letztes_element(Letztes_element,[Letztes_element]).
letztes_element(Letztes_element,[_|Rest]):-letztes_element(Letztes_element,Rest).

verkette([],L2,L2).
verkette([H|Rest1],L2,[H|Rest2]):-verkette(Rest1,L2,Rest2).

