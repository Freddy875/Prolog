simpson(abraham).
simpson(mona).
simpson(herb).
simpson(homero).
simpson(bart).
simpson(lisa).
simpson(maggie).
%Hazlo por ella
bouvier(clancy).
bouvier(jackie).
bouvier(patty).
bouvier(selma).
bouvier(marge).
bouvier(ling).

padreDe(abraham,herb).
padreDe(abraham,homero).
padreDe(homero,bart).
padreDe(homero,lisa).
padreDe(homero,maggie).
padreDe(clancy,marge).
padreDe(clancy,patty).
padreDe(clancy,selma).

madreDe(mona,homero).
madreDe(jackie,patty).
madreDe(jackie,selma).
madreDe(jackie,marge).
madreDe(marge,bart).
madreDe(marge,lisa).
madreDe(marge,maggie).
madreDe(selma,ling).

esposos(abraham,mona).
esposos(clancy,jackie).
esposos(homero,marge).

hijosDe(A,B):-padreDe(B,A).
hijosDe(A,B):-madreDe(B,A).

abuelosDe(A,B):-padreDe(A,C),padreDe(C,B).
abuelosDe(A,B):-madreDe(A,C),madreDe(C,B).

hermanos(A,B):-padreDe(C,A),padreDe(C,B).
hermanos(A,B):-madreDe(C,A),madreDe(C,B).

familiar(A,B):-padreDe(A,B);hijosDe(A,B);hermanos(A,B).

ancentroDe(A,B):-padreDe(A,B).
ancestroDe(A,B):-padreDe(A,C),ancestroDe(C,B).










