% 1 užduotis

% Genealoginis medis nupieštas ant popieriaus lapo, bus pateiktas paskaitoje

% Užduoties predikatai:
% 11) senele(X, Y);
% 19) is_vienos_šeimos(X, Y, Z);
% 36) trys_draugai(X,Y,Z)  : "panašaus amžiaus ir turi tą patį pomegį";
% 37) klaida_duomenyse(A) : "asmuo A turi jaunesnį vieną iš tevų";

% Užklausų pavyzdžiai:
% senelė(gabija, Anūkas).  =>  daina ; danas ; danė ; doma ; demetra .
% senelė(Senelė, bernarda).  =>  eglė ; elona .
% iš_vienos_šeimos(danė, danas, banga).  =>  true.
% iš_vienos_šeimos(eglė, ela, demetra).  =>  false.
% is_vienos_šeimos(Asmuo1, Asmuo2, abramas).  =>  barbora ; balys .
% trys_draugai(doma, darius, dmitrijus).  =>  false.
% trys_draugai(Asmuo1, Asmuo2, Asmuo3).  =>  daina ; darius ; dovis .
% klaida_duomenyse(Asmuo).  =>  false .
% Pakeitus `doma` amžių į 1:
% klaida_duomenyse(Asmuo).  =>  bernarda ; benas .

% Faktai ======================================================================
% Sumos
s(1, 1, 2). s(2, 1, 3). s(3, 1, 4). s(4, 1, 5). s(5, 1, 6).
s(6, 1, 7). s(7, 1, 8). s(8, 1, 9). s(9, 1, 10). s(10, 1, 11).
s(11, 1, 12). s(12, 1, 13). s(13, 1, 14). s(14, 1, 15). s(15, 1, 16).
s(16, 1, 17). s(17, 1, 18). s(18, 1, 19). s(19, 1, 20). s(20, 1, 21).
s(21, 1, 22). s(22, 1, 23). s(23, 1, 24). s(24, 1, 25). s(25, 1, 26).
s(26, 1, 27). s(27, 1, 28). s(28, 1, 29). s(29, 1, 30). s(30, 1, 31).
s(31, 1, 32). s(32, 1, 33). s(33, 1, 34). s(34, 1, 35). s(35, 1, 36).
s(36, 1, 37). s(37, 1, 38). s(38, 1, 39). s(39, 1, 40). s(40, 1, 41).
s(41, 1, 42). s(42, 1, 43). s(43, 1, 44). s(44, 1, 45). s(45, 1, 46).
s(46, 1, 47). s(47, 1, 48). s(48, 1, 49). s(49, 1, 50). s(50, 1, 51).
s(51, 1, 52). s(52, 1, 53). s(53, 1, 54). s(54, 1, 55). s(55, 1, 56).
s(56, 1, 57). s(57, 1, 58). s(58, 1, 59). s(59, 1, 60). s(60, 1, 61).
s(61, 1, 62). s(62, 1, 63). s(63, 1, 64). s(64, 1, 65). s(65, 1, 66).
s(66, 1, 67). s(67, 1, 68). s(68, 1, 69). s(69, 1, 70). s(70, 1, 71).
s(71, 1, 72). s(72, 1, 73). s(73, 1, 74). s(74, 1, 75). s(75, 1, 76).
s(76, 1, 77). s(77, 1, 78). s(78, 1, 79). s(80, 1, 81). s(81, 1, 82).
s(82, 1, 83). s(83, 1, 84). s(84, 1, 85). s(85, 1, 86). s(86, 1, 87).

% Genealogijos medis ==========================================================
% 1
asmuo(gabija, moteris, 81, tinklinis).
asmuo(gabrielis, vyras, 8, krepšinis).
asmuo(geta, moteris, 80, skvošas).
asmuo(gintas, vyras, 80, krepšinis).
asmuo(guoda, moteris, 83, krepšinis).
% 2
asmuo(edita, moteris, 63, tinklinis).
asmuo(eglė, moteris, 60, badmintonas).
asmuo(edgaras, vyras, 61, tinklinis).
asmuo(ela, moteris, 59, skvošas).
asmuo(eimis, vyras, 59, krepšinis).
asmuo(elona, moteris, 60, skvošas).
asmuo(erikas, vyras, 62, badmintonas).
asmuo(eva, moteris, 63, tinklinis).
asmuo(ernestas, vyras, 64, krepšinis).
% 3
asmuo(daina, moteris, 40, tenisas).
asmuo(daivis, vyras, 41, badmintonas).
asmuo(danė, moteris, 42, krepšinis).
asmuo(danas, vyras, 42, krepšinis).
asmuo(doma, moteris, 39, krepšinis).
asmuo(darius, vyras, 39, tenisas).
asmuo(demetra, moteris, 41, futbolas).
asmuo(dmitrijus, vyras, 40, tinklinis).
asmuo(dita, moteris, 45, skvošas).
asmuo(dovis, vyras, 40, tenisas).
% 4
asmuo(banga, moteris, 11, krepšinis).
asmuo(barbora, moteris, 20, futbolas).
asmuo(balys, vyras, 20, badmintonas).
asmuo(bernarda, moteris, 21, tinklinis).
asmuo(bartas, vyras, 22, skvošas).
asmuo(benas, vyras, 23, tenisas).
% 5
asmuo(abramas, vyras, 5, krepšinis).
asmuo(ada, moteris, 7, tinklinis).
asmuo(adrija, moteris, 3, badmintonas).

% mamos
% 1
mama(gabija, edita).
mama(gabija, edgaras).
mama(gabija, ela).
mama(geta, eimis).
mama(geta, elona).
mama(geta, eva).
% 2
mama(eglė, danė).
mama(eglė, doma).
mama(eglė, demetra).
mama(ela, daina).
mama(ela, danas).
mama(elona, darius).
mama(elona, dmitrijus).
mama(eva, dovis).
% 3
mama(daina, barbora).
mama(danė, banga).
mama(doma, bernarda).
mama(doma, benas).
% 4
mama(barbora, abramas).
mama(balys, ada).
mama(bernarda, adrija).

% poros
% 1
pora(gabrielis, gabija).
pora(gintas, geta).
% 2
pora(edgaras, eglė).
pora(eimis, ela).
pora(erikas, elona).
pora(ernestas, eva).
% 3
pora(daivis, daina).
pora(danas, danė).
pora(darius, doma).
pora(dmitrijus, demetra).
pora(dovis, dita).
% 4
pora(balys, barbora).
pora(bartas, bernarda).

% Predikatai ==================================================================
% Aritmetika
sudėti(X, Y, Z) :- s(X, Y, Z).
atimti(X, Y, Z) :- s(Z, Y, X).

% Jei abejų parametrų reikšmėms galima priskirti tą patį vardą - parametrų reikšmės sutampa
% Parametrų reikšmėms priskirti tą patį vardą bus galima tik jei tos reikšmės yra vienodos
sutampa(X, X).

% Asmuo yra anūko senelė, jei anūko mamos mama yra tas asmuo
senelė(Senelė, Anūkas) :-
    mama(Senelė, Mama),
    mama(Mama, Anūkas).
% Asmuo yra anūko senelė, jei anūko tėvo mama yra tas asmuo
senelė(Senelė, Anūkas) :-
    mama(Senelė, Tėvas),
    tėvas(Tėvas, Anūkas).

% Asmuo yra vaiko tėvas, jei vaiko mama yra poroje su tuo asmeniu
tėvas(Tėvas, Vaikas) :-
    mama(Mama, Vaikas),
    pora(Tėvas, Mama).

% Trys asmenys yra vienoje šeimoje, jei kiekvienas asmuo yra bendroje šeimoje su kiekvienu kitu asmeniu
iš_vienos_šeimos(Asmuo1, Asmuo2, Asmuo3) :-
    bendra_šeima(Asmuo1, Asmuo2),
    bendra_šeima(Asmuo2, Asmuo3),
    bendra_šeima(Asmuo1, Asmuo3).

% Mama ir vaikas yra bendroje šeimoje
bendra_šeima(Mama, Vaikas) :- mama(Mama, Vaikas).
bendra_šeima(Vaikas, Mama) :- mama(Mama, Vaikas).
% Tėvas ir vaikas yra bendroje šeimoje
bendra_šeima(Tėvas, Vaikas) :- tėvas(Tėvas, Vaikas).
bendra_šeima(Vaikas, Tėvas) :- tėvas(Tėvas, Vaikas).
% Du asmenys, turintys tą pačią mamą, yra iš vienos šeimos, bet tik jei tai ne tas pats asmuo
bendra_šeima(Vaikas1, Vaikas2) :-
    mama(Mama, Vaikas1),
    mama(Mama, Vaikas2),
    not(sutampa(Vaikas1, Vaikas2)).
% Jei du asmenys yra poroje - jie yra vienoje šeimoje
bendra_šeima(Vyras, Žmona) :- pora(Vyras, Žmona).
bendra_šeima(Žmona, Vyras) :- pora(Vyras, Žmona).

% Draugai, jei sutampa pomėgiai ir jų amžius panašus
trys_draugai(Draugas1, Draugas2, Draugas3) :-
    asmuo(Draugas1, _, Amžius1, Pomėgis1),
    asmuo(Draugas2, _, Amžius2, Pomėgis2),
    asmuo(Draugas3, _, Amžius3, Pomėgis3),
    not(sutampa(Draugas1, Draugas2)),
    not(sutampa(Draugas1, Draugas3)),
    not(sutampa(Draugas2, Draugas3)),
    sutampa_pomėgiai(Pomėgis1, Pomėgis2, Pomėgis3),
    panašaus_amžiaus(Amžius1, Amžius2, Amžius3).

% Jei sutampa pirmi du ir paskutiniai du, tai visi trys yra lygūs
sutampa_pomėgiai(Pomėgis1, Pomėgis2, Pomėgis3) :-
    sutampa(Pomėgis1, Pomėgis2),
    sutampa(Pomėgis2, Pomėgis3).

% Trys asmenys yra laikomi panašaus amžiaus, jei amžiaus skirtumas tarp bet kurių 2 asmenų yra ne didesnis nei 1
panašaus_amžiaus(Amžius1, Amžius2, Amžius3) :-
    beveik_sutampa(Amžius1, Amžius2),
    beveik_sutampa(Amžius1, Amžius3),
    beveik_sutampa(Amžius2, Amžius3).

% Beveik sutampa - jei amžiaus skirtumas tarp 2 asmenų yra ne didesnis nei 1 metai
% Amžius1 = Amžius2
beveik_sutampa(Amžius1, Amžius2) :-
    sutampa(Amžius1, Amžius2).
% Amžius1 + 1 = Amžius2
beveik_sutampa(Amžius1, Amžius2) :-
    sudėti(Amžius1, 1, Amžius1_plius_1),
    sutampa(Amžius1_plius_1, Amžius2).
% Amžius1 - 1 = Amžius2
beveik_sutampa(Amžius1, Amžius2) :-
    atimti(Amžius1, 1, Amžius1_minus_1),
    sutampa(Amžius1_minus_1, Amžius2).

% Klaida duomenyse, jei asmuo turi jaunesnį vieną iš tėvų.
% Klaida, jei asmuo nėra jaunesnis už asmens mamą
klaida_duomenyse(Asmuo) :-
    asmuo(Asmuo, _, AsmensAmžius, _),
    mama(AsmensMama, Asmuo),
    asmuo(AsmensMama, _, AsmensMamosAmžius, _),
    not(<(AsmensAmžius, AsmensMamosAmžius)).
% Klaida, jei asmuo nėra jaunesnis už savo tėvą
klaida_duomenyse(Asmuo) :-
    asmuo(Asmuo, _, AsmensAmžius, _),
    tėvas(AsmensTėvas, Asmuo),
    asmuo(AsmensTėvas, _, AsmensTėvoAmžius, _),
    not(<(AsmensAmžius, AsmensTėvoAmžius)).
