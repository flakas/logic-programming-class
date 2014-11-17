% 2.d)"A is younger than student B of the same course";

% Facts

% student(Name, Course)
student(greta, 1). student(gabija, 1). student(edita, 1).
student(ela, 1). student(demetra, 1). student(dita, 1).
student(banga, 1). student(balys, 1). student(abramas, 1).
student(danas, 2). student(adrija, 2).
student(gabrielis, 3). student(eva, 3). student(bartas, 3).
student(eimis, 4). student(ada, 4). student(daina, 4).

% isOlder(StudentA, StudentB) => A is older than B
isOlder(greta, edita). isOlder(greta, ela). isOlder(greta, eimis). isOlder(greta, eva).
isOlder(gabija, edita). isOlder(gabija, ela). isOlder(gabija, eimis). isOlder(gabija, eva).
isOlder(gabrielis, edita). isOlder(gabrielis, ela). isOlder(gabrielis, eimis). isOlder(gabrielis, eva).
isOlder(edita, daina). isOlder(edita, danas). isOlder(edita, demetra). isOlder(edita, dita).
isOlder(ela, daina). isOlder(ela, danas). isOlder(ela, demetra). isOlder(ela, dita).
isOlder(eimis, daina). isOlder(eimis, danas). isOlder(eimis, demetra). isOlder(eimis, dita).
isOlder(eva, daina). isOlder(eva, danas). isOlder(eva, demetra). isOlder(eva, dita).
isOlder(daina, banga). isOlder(daina, balys). isOlder(daina, bartas).
isOlder(danas, banga). isOlder(danas, balys). isOlder(danas, bartas).
isOlder(demetra, banga). isOlder(demetra, balys). isOlder(demetra, bartas).
isOlder(dita, banga). isOlder(dita, balys). isOlder(dita, bartas).
isOlder(banga, abramas). isOlder(banga, ada). isOlder(banga, adrija).
isOlder(balys, abramas). isOlder(balys, ada). isOlder(balys, adrija).
isOlder(bartas, abramas). isOlder(bartas, ada). isOlder(bartas, adrija).

% Predicates

% StudentA is younger than StudentB ir and both are from the same course
youngerThanClassmate(StudentA, StudentB) :-
    student(StudentA, SameCourse),
    student(StudentB, SameCourse),
    StudentA \= StudentB, % Not the same student
    transitivelyYounger(StudentA, StudentB).

% StudentA is tranzitively younger than B if
% B is older than (C1, C1 is older than C2, C2 older than C3, ... CN-1 older than CN, CN older than) A,
% We can find an "older than" chain from B to A
transitivelyYounger(Initial, Final) :-
    isOlder(Final, Initial).
transitivelyYounger(Initial, Final) :-
    isOlder(Current, Initial),
    transitivelyYounger(Current, Final),
    !. % If proof chain is already found - don't backtrack
