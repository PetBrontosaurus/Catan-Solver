card(stone).
card(brick).
card(wood).
card(wheat).
card(sheep).


%card(X) :- 
%  X = sheep;
%  X = wheat;
%  X = wood;
%  X = brick;
%  X = stone.




pushCard(List, OutList) :- 
  card(X),
  OutList = [X | List].   
  
  



%from stackoverflow - https://stackoverflow.com/questions/15857382/removing-first-occurrence-in-list-prolog.
%delete_one(_, [], []).
delete_one(Term, [Term|Tail], Tail).
delete_one(Term, [Head|Tail], [Head|Result]) :-
  delete_one(Term, Tail, Result).

% modified from above stackoverflow code.
%delete_two(_, [], []).
%delete_two(Term, [Term|Tail], Result) :-
%	delete_one(Term, [Term|Tail], OutList),
%	delete_one(Term, Outlist, Result).
delete_two(Term, [Head|Tail], Result) :-
  delete_one(Term, [Head|Tail], X),
  delete_one(Term, X, Result).
  
  
%sheep_port(_, [], []).
%sheep_port([Head|Tail], Result):-
%	delete_two(sheep, [Head|Tail], [ResultOfSheepPort]),
%        append([card(X)], [ResultOfSheepPort], Result). 






sheep_port_single(InList, OutList) :-
  delete_two(sheep, InList, ShorterList),
  pushCard(ShorterList, LongerList),
  OutList = LongerList.



/*
purchase_city([Head|Tail]) :-
  delete_two(stone, [Head|Tail], _),
  delete_one(stone, [Head|Tail], _),
  delete_two(wheat, [Head|Tail], _).


  
has10_VPs([Head|Tail]) :- 
  10 is aggregate_all(count, makeCities([Head|Tail]).


makeCities([Head|Tail]) :-
  purchase_city([Head|Tail]);
  sheep_port(sheep, [Head|Tail], [Head|Tail]).

  
*/
  
%delete_one(_, [], []).
%delete_one(Term, [Term|Tail], Tail).


  
%delete_two(_, [], []).
%delete_two(Term, [Term, Term|Tail], Tail).
