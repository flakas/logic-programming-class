% 2.d)"A jaunesnis negu to paties kurso studentas B";

% Faktai

studentas(greta, 1). studentas(gabija, 1). studentas(edita, 1).
studentas(ela, 1). studentas(demetra, 1). studentas(dita, 1).
studentas(banga, 1). studentas(balys, 1). studentas(abramas, 1).
studentas(danas, 2). studentas(adrija, 2).
studentas(gabrielis, 3). studentas(eva, 3). studentas(bartas, 3).
studentas(eimis, 4). studentas(ada, 4). studentas(daina, 4).

yraVyresnis(greta, edita). yraVyresnis(greta, ela). yraVyresnis(greta, eimis). yraVyresnis(greta, eva).
yraVyresnis(gabija, edita). yraVyresnis(gabija, ela). yraVyresnis(gabija, eimis). yraVyresnis(gabija, eva).
yraVyresnis(gabrielis, edita). yraVyresnis(gabrielis, ela). yraVyresnis(gabrielis, eimis). yraVyresnis(gabrielis, eva).
yraVyresnis(edita, daina). yraVyresnis(edita, danas). yraVyresnis(edita, demetra). yraVyresnis(edita, dita).
yraVyresnis(ela, daina). yraVyresnis(ela, danas). yraVyresnis(ela, demetra). yraVyresnis(ela, dita).
yraVyresnis(eimis, daina). yraVyresnis(eimis, danas). yraVyresnis(eimis, demetra). yraVyresnis(eimis, dita).
yraVyresnis(eva, daina). yraVyresnis(eva, danas). yraVyresnis(eva, demetra). yraVyresnis(eva, dita).
yraVyresnis(daina, banga). yraVyresnis(daina, balys). yraVyresnis(daina, bartas).
yraVyresnis(danas, banga). yraVyresnis(danas, balys). yraVyresnis(danas, bartas).
yraVyresnis(demetra, banga). yraVyresnis(demetra, balys). yraVyresnis(demetra, bartas).
yraVyresnis(dita, banga). yraVyresnis(dita, balys). yraVyresnis(dita, bartas).
yraVyresnis(banga, abramas). yraVyresnis(banga, ada). yraVyresnis(banga, adrija).
yraVyresnis(balys, abramas). yraVyresnis(balys, ada). yraVyresnis(balys, adrija).
yraVyresnis(bartas, abramas). yraVyresnis(bartas, ada). yraVyresnis(bartas, adrija).

% Predikatai

% StudentasA yra jaunesnis nei StudentasB ir abu yra iš to paties kurso
jaunesnisNeiBendrakursis(StudentasA, StudentasB) :-
    studentas(StudentasA, BendrasKursas),
    studentas(StudentasB, BendrasKursas),
    StudentasA \= StudentasB, % Tai nėra tas pats studentas
    tranzityviaiJaunesnis(StudentasA, StudentasB).

% Asmuo A yra tranzityviai jaunesnis už B, jei
% B vyresnis už (C1, C1 vyresnis už C2, C2 vyresnis C3, ... CN-1 vyresnis už CN, CN vyresnis už) A,
% T.y. atsiras tranzityvi "vyresnis už" grandinė nuo B iki A
tranzityviaiJaunesnis(Pradinis, Galutinis) :-
    yraVyresnis(Galutinis, Pradinis).
tranzityviaiJaunesnis(Pradinis, Galutinis) :-
    yraVyresnis(Dabartinis, Pradinis),
    tranzityviaiJaunesnis(Dabartinis, Galutinis),
    !. % Jei rastas bent vienas sėkmingas įrodymo kelias - stabdom alternatyvų paiešką
