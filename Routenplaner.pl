%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                       %
%    Routenplaner.pl                    %
%    Author: C.Boesener - Semester III  %
%    21.10.2020                         %
%                                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%% FAKTENBASIS %%%%%%%%%%%%%%%%

kante(n1,n2).
kante(n2,n5).
kante(n2,n6).
kante(n2,n3).
kante(n3,n4).
kante(n6,n7).
kante(n6,n8).

%%%%%%%%%%%% REGELBASIS %%%%%%%%%%%%%%%%

pfad(X,Y):- kante(X,Y);kante(X,Z),pfad(Z,Y).
% rekursiv modeliert , unabhaengig von Graph-tiefe

