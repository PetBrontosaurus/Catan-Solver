[ stone,
  stone,
  brick,
  wood,
  wheat,
  sheep,
  stone,
  stone,
  brick,
  wood,
  wheat,
  sheep,
  stone,
  stone,
  brick,
  wood,
  wheat,
  sheep].









%from stackoverflow - https://stackoverflow.com/questions/15857382/removing-first-occurrence-in-list-prolog.
delete_one(_, [], []).
delete_one(Term, [Term|Tail], Tail).
delete_one(Term, [Head|Tail], [Head|Result]) :-
  delete_one(Term, Tail, Result).

% modified from above stackoverflow code.
delete_two(_, [], []).
delete_two(Term, [Term|Tail], Result) :-
	delete_one(Term, [Term|Tail], OutList),
	delete_one(Term, Outlist, Result).
delete_two(Term, [Head|Tail], Result) :-
  delete_one(Term, [Head|Tail], X),
  delete_one(Term, X, Result).
  
  
sheep_port(_, [], []).
sheep_port(sheep, [Head|Tail], Result):-
	delete_two(sheep, [Head|Tail], ResultOfSheepPort),
        append(Output, ResultOfSheepPort, Result). 



  
main_process_loop :- 
  %10 VP Check
  %Sheep Port
  %Purchase City

  
  
%delete_one(_, [], []).
%delete_one(Term, [Term|Tail], Tail).


  
%delete_two(_, [], []).
%delete_two(Term, [Term, Term|Tail], Tail).
