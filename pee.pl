%Brandon_Conn

%FACTS

%location(X, car).
%location(X, home).
%location(X, outside).
%location(X, party).
%location(X, somewhere_else).

%canHoldIt(X, yes).
%canHoldIt(X,no).

%inShower(X,yes).
%inShower(X,no).

%peopleAround(X,no).
%peopleAround(X, yes).

%isDrunk(X, yes).
%isDrunk(X, no).

%askUrineSample(X, yes).
%askUrineSample(X, no).

%inTraffic(X, yes).
%inTraffic(X, no).

%washedFeet(X, yes).
%washedFeet(X,no).

%isConscious(X,yes).
%isConscious(X,no).

%carefree(X, yes).
%carefree(X, no).

%RULES

peeRoad(X) :-
	location(X, car),
        canHoldIt(X, no),
	isTraffic(X, no).

peeShower(X) :-
	location(X, home),
	inShower(X, yes),
	washedFeet(X, no).

peeXrPants(X) :-
	location(X, party),
	isDrunk(X, yes),
	isConscious(X, no).

peeAnywhere(X) :-
	location(X, outside),
	peopleAround(X, no).

peeAnywhere(X) :-
	location(X, party),
	isDrunk(X, yes),
	isConscious(X, yes).

peeAnywhere(X) :-
        location(X, outside),
        peopleAround(X, yes),
	carefree(X, no).

peeBush(X) :-
        location(X, outside),
        peopleAround(X, yes),
        carefree(X, yes).

peeCup(X) :-
	location(X, car),
	canHoldIt(X, no),
	isTraffic(x, yes).

peeCup(X) :-
	location(X, somewhere_else),
	askUrineSample(X, yes).

peeToilet(X) :-
	location(X, home),
	inShower(X, no).

peeToilet(X) :-
	location(X, home),
	inShower(X, yes),
	washedFeet(X, yes).

peeToilet(X) :-
	location(X, car),
	canHoldIt(X, yes).

peeToilet(X) :-
	location(X, party),
	isDrunk(X, no).

peeToilet(X) :-
	location(X, somewhere_else),
	askUrineSample(X, no).
