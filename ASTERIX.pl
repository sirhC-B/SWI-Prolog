%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%          Asterix
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

jagt(asterix,roemer).
jagt(asterix,wildschwein).
isst_gerne(asterix,wildschwein).

laune(X, gut):- jagt(X,Beute),isst_gerne(X,Beute).

