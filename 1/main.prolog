% Faktai ============================================================
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

% Genealogijos medis
asmuo(jonas, vyras, 10, krepšinis).
asmuo(ona, moteris, 21, tinklinis).
asmuo(petras, vyras, 21, tinklinis).
asmuo(dina, moteris, 22, tinklinis).
asmuo(bronė, moteris, 30, tinklinis).
mama(ona, jonas).
mama(bronė, ona).
pora(petras, ona).

% Predikatai ========================================================
% Aritmetika
sudėti(X, Y, Z) :- s(X, Y, Z).
atimti(X, Y, Z) :- s(Z, Y, X).

% Asmuo yra anūko senelė, jei anūko mamos mama yra tas asmuo
senelė(Senelė, Anūkas) :-
    mama(Senelė, Mama),
    mama(Mama, Anūkas).

% Asmuo yra vaiko tėvas, jei vaiko mama yra poroje su tuo asmeniu
tėvas(Tėvas, Vaikas) :-
    mama(Mama, Vaikas),
    pora(Tėvas, Mama).

% Mama ir vaikas yra bendroje šeimoje
iš_vienos_šeimos(Mama, Vaikas) :- mama(Mama, Vaikas).
iš_vienos_šeimos(Vaikas, Mama) :- mama(Mama, Vaikas).
% Tėvas ir vaikas yra bendroje šeimoje
iš_vienos_šeimos(Tėvas, Vaikas) :- tėvas(Tėvas, Vaikas).
iš_vienos_šeimos(Vaikas, Tėvas) :- tėvas(Tėvas, Vaikas).
% Du asmenys, turintys tą pačią mamą, yra iš vienos šeimos, bet ne tas pats asmuo
iš_vienos_šeimos(Vaikas1, Vaikas2) :-
    mama(Mama, Vaikas1),
    mama(Mama, Vaikas2),
    not(sutampa(Vaikas1, Vaikas2)).
% Jei du asmenys yra poroje - jie yra vienoje šeimoje
iš_vienos_šeimos(Vyras, Žmona) :- pora(Vyras, Žmona).
iš_vienos_šeimos(Žmona, Vyras) :- pora(Žmona, Vyras).

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

% Jei abejų parametrų reikšmėms galima priskirti tą patį vardą - parametrų reikšmės sutampa
% Parametrų reikšmėms priskirti tą patį vardą bus galima tik jei tos reikšmės yra vienodos
sutampa(X, X).

% Jei sutampa pirmi du ir paskutiniai du, tai visi trys yra lygūs
sutampa_pomėgiai(Pomėgis1, Pomėgis2, Pomėgis3) :-
    sutampa(Pomėgis1, Pomėgis2),
    sutampa(Pomėgis2, Pomėgis3).

% Trys asmenys yra laikomi panašaus amžiaus, jei amžiaus skirtumas tarp bet kurių 2 asmenų yra ne didesnis nei 1
panašaus_amžiaus(Amžius1, Amžius2, Amžius3) :-
    beveik_sutampa(Amžius1, Amžius2),
    beveik_sutampa(Amžius1, Amžius3),
    beveik_sutampa(Amžius2, Amžius3).

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
