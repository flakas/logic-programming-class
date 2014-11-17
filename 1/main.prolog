% Task 1

% Genealogy tree will be submitted in lecture

% Task predicates:
% 11) grandmother(X, Y);
% 19) from_same_family(X, Y, Z);
% 36) three_friends(X,Y,Z)  : "of similar age and has same interests";
% 37) error_in_data(A) : "person A has one of the parents younger";

% Query samples:
% grandmother(gabija, Grandchild).  =>  daina ; danas ; danė ; doma ; demetra .
% grandmother(Grandmother, bernarda).  =>  eglė ; elona .
% from_same_family(danė, danas, banga).  =>  true.
% from_same_family(eglė, ela, demetra).  =>  false.
% from_same_family(Person1, Person2, abramas).  =>  barbora ; balys .
% three_friends(doma, darius, dmitrijus).  =>  false.
% three_friends(Person1, Person2, Person3).  =>  daina ; darius ; dovis .
% error_in_data(Person).  =>  false .
% After changing `doma` age to 1:
% error_in_data(Person).  =>  bernarda ; benas .

% Facts ======================================================================
% Sums
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

% Genealogy tree =============================================================
% 1
person(gabija, female, 81, volleyball).
person(gabrielis, male, 8, basketball).
person(geta, female, 80, squash).
person(gintas, male, 80, basketball).
person(guoda, female, 83, basketball).
% 2
person(edita, female, 63, volleyball).
person(eglė, female, 60, badminton).
person(edgaras, male, 61, volleyball).
person(ela, female, 59, squash).
person(eimis, male, 59, basketball).
person(elona, female, 60, squash).
person(erikas, male, 62, badminton).
person(eva, female, 63, volleyball).
person(ernestas, male, 64, basketball).
% 3
person(daina, female, 40, tennis).
person(daivis, male, 41, badminton).
person(danė, female, 42, basketball).
person(danas, male, 42, basketball).
person(doma, female, 39, basketball).
person(darius, male, 39, tennis).
person(demetra, female, 41, football).
person(dmitrijus, male, 40, volleyball).
person(dita, female, 45, squash).
person(dovis, male, 40, tennis).
% 4
person(banga, female, 11, basketball).
person(barbora, female, 20, football).
person(balys, male, 20, badminton).
person(bernarda, female, 21, volleyball).
person(bartas, male, 22, squash).
person(benas, male, 23, tennis).
% 5
person(abramas, male, 5, basketball).
person(ada, female, 7, volleyball).
person(adrija, female, 3, badminton).

% mothers
% 1
mother(gabija, edita).
mother(gabija, edgaras).
mother(gabija, ela).
mother(geta, eimis).
mother(geta, elona).
mother(geta, eva).
% 2
mother(eglė, danė).
mother(eglė, doma).
mother(eglė, demetra).
mother(ela, daina).
mother(ela, danas).
mother(elona, darius).
mother(elona, dmitrijus).
mother(eva, dovis).
% 3
mother(daina, barbora).
mother(danė, banga).
mother(doma, bernarda).
mother(doma, benas).
% 4
mother(barbora, abramas).
mother(balys, ada).
mother(bernarda, adrija).

% couples
% 1
couple(gabrielis, gabija).
couple(gintas, geta).
% 2
couple(edgaras, eglė).
couple(eimis, ela).
couple(erikas, elona).
couple(ernestas, eva).
% 3
couple(daivis, daina).
couple(danas, danė).
couple(darius, doma).
couple(dmitrijus, demetra).
couple(dovis, dita).
% 4
couple(balys, barbora).
couple(bartas, bernarda).

% Predicates =================================================================
% Arithmetic
add(X, Y, Z) :- s(X, Y, Z).
subtract(X, Y, Z) :- s(Z, Y, X).

matches(X, X).

% Person is a grandmother of a grandchild if grandchild's mother's mother is the other person
grandmother(Grandmother, Grandchild) :-
    mother(Grandmother, Mother),
    mother(Mother, Grandchild).
% Person is a grandmother of a grandchild if grandchild's father's mother is the other person
grandmother(Grandmother, Grandchild) :-
    mother(Grandmother, Father),
    father(Father, Grandchild).

% Person is a child's father if child's mother is in a couple with the person
father(Father, Child) :-
    mother(Mother, Child),
    couple(Father, Mother).

% Three people are in the same family is every pair of people are in the same family
from_same_family(Person1, Person2, Person3) :-
    same_family(Person1, Person2),
    same_family(Person2, Person3),
    same_family(Person1, Person3).

% mother and a child are in the same family
same_family(Mother, Child) :- mother(Mother, Child).
same_family(Child, Mother) :- mother(Mother, Child).
% father and a child are in the same family
same_family(Father, Child) :- father(Father, Child).
same_family(Child, Father) :- father(Father, Child).
% Two people that have the same mother are in the same family, except when if they are the same person
same_family(Child1, Child2) :-
    mother(Mother, Child1),
    mother(Mother, Child2),
    not(matches(Child1, Child2)).
% Two people are in a family if they are in a couple
same_family(Husband, Wife) :- couple(Husband, Wife).
same_family(Wife, Husband) :- couple(Husband, Wife).

% Friends if their interests match and their ages are similar
three_friends(Friend1, Friend2, Friend3) :-
    person(Friend1, _, Age1, Interest1),
    person(Friend2, _, Age2, Interest2),
    person(Friend3, _, Age3, Interest3),
    not(matches(Friend1, Friend2)),
    not(matches(Friend1, Friend3)),
    not(matches(Friend2, Friend3)),
    interests_match(Interest1, Interest2, Interest3),
    of_similar_age(Age1, Age2, Age3).

interests_match(Interest1, Interest2, Interest3) :-
    matches(Interest1, Interest2),
    matches(Interest2, Interest3).

of_similar_age(Age1, Age2, Age3) :-
    almost_matches(Age1, Age2),
    almost_matches(Age1, Age3),
    almost_matches(Age2, Age3).

% Ages almost match if their difference is less than one year
% Age1 = Age2
almost_matches(Age1, Age2) :-
    matches(Age1, Age2).
% Age1 + 1 = Age2
almost_matches(Age1, Age2) :-
    add(Age1, 1, Age1_plius_1),
    matches(Age1_plius_1, Age2).
% Age1 - 1 = Age2
almost_matches(Age1, Age2) :-
    subtract(Age1, 1, Age1_minus_1),
    matches(Age1_minus_1, Age2).

% Error in data if one person is younger than one of their parents
% Person is younger than his/her mother
error_in_data(Person) :-
    person(Person, _, PersonsAge, _),
    mother(Mother, Person),
    person(Mother, _, MothersAge, _),
    not(<(PersonsAge, MothersAge)).
% Klaida, jei person nėra jaunesnis už savo tėvą
error_in_data(Person) :-
    person(Person, _, PersonsAge, _),
    father(Father, Person),
    person(Father, _, FathersAge, _),
    not(<(PersonsAge, FathersAge)).
