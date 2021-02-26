animal(conejo).
animal(perro).
animal(gato).
animal(caballo).

%Hechos

hervivoro(conejo).
hervivoro(caballo).
carnivoro(perro).
carnivoro(gato).

masDebil(conejo,perro).
masDebil(gato,perro).
masDebil(conejo,gato).
masDebil(gato,caballo).

%Terminos

plantaComestible(lechuga).
plantaComestible(zanahoria).

come(A,B):-
    carnivoro(A),animal(B), masDebil(B,A);
    hervivoro(A), plantaComestible(B).

