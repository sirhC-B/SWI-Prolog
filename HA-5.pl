%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                       %
%    HA-5.pl - Das Faerbeproblem        %
%    Author: C.Boesener - Semester III  %
%    27.11.2020                         %
%                                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%% FAKTENBASIS %%%%%%%%%%%%%%%%

farbe(rot).
farbe(blau).
farbe(gelb).

%%%%%%%%%%%% REGELBASIS_1 %%%%%%%%%%%%%%%%


einfaerbung(F1,F2,F3,F4):-farbe(F1),farbe(F2), F1 \= F2, 
                          farbe(F3), F3 \= F2, 
                          farbe(F4), F4 \= F3, F4 \= F2, F4 \= F1, !.

einfaerbung_alle(F1,F2,F3,F4):-farbe(F1),farbe(F2), F1 \= F2, 
                          farbe(F3), F3 \= F2, 
                          farbe(F4), F4 \= F3, F4 \= F2, F4 \= F1.
                
alle_faerbungen:-einfaerbung_alle(F1,F2,F3,F4), format(" F1 ~a, F2 ~a, F3 ~a, F4 ~a", [F1,F2,F3,F4]),nl,fail.


%%%%%%%%%%%% REGELBASIS_2 %%%%%%%%%%%%%%%%


einfaerbung_2(F1,F2,F3,F4,F5):-farbe(F1),farbe(F2), F1 \= F2, 
                               farbe(F3), F3 \= F1, F3 \= F2, 
                               farbe(F4), F4 \= F3, F4 \= F2,
                               farbe(F5), F5 \= F1, F5 \= F3, F5 \= F4,!.

einfaerbung_alle_2(F1,F2,F3,F4,F5):-farbe(F1),farbe(F2), F1 \= F2, 
                                    farbe(F3), F3 \= F1, F3 \= F2, 
                                    farbe(F4), F4 \= F3, F4 \= F2,
                                    farbe(F5), F5 \= F1, F5 \= F3, F5 \= F4.

alle_faerbungen_2:-einfaerbung_alle_2(F1,F2,F3,F4,F5), format(" F1 ~a, F2 ~a, F3 ~a, F4 ~a, F5 ~a", [F1,F2,F3,F4,F5]),nl,fail.