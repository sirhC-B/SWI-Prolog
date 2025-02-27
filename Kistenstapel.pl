%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                       %
%    Kistenstapel.pl                    %
%    Author: C.Boesener - Semester III  %
%    29.10.2020                         %
%                                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%% FAKTENBASIS %%%%%%%%%%%%%%%%

on(a,b).
on(b,c).
on(c,table).
on(d,e).
on(e,table).
on(f,g).
on(g,table).
on(h,table).
left(c,e).
left(e,g).
left(g,h).

%%%%%%%%%%%% REGELBASIS %%%%%%%%%%%%%%%%

over(X,Y):- on(X,Y).                     % over direct
over(X,Y):- on(X,Z),over(Z,Y).           % over above

left_of(X,Y):-left(X,Y).                 % left_of direct
left_of(X,Y):-left(X,Z),left_of(Z,Y).    % left_of in a row
left_of(X,Y):-over(X,Z),left_of(Z,Y).    % left_of diagonal up
left_of(X,Y):-over(Y,Z),left_of(X,Z).    % left_of diagonal down

