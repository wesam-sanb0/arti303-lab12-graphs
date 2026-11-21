
% ARTI 401 - Lab 12: Graphs
% Task 1: Finding Paths Between Cities

% Directed Graph - Facts

road('Makkah', 'Madinah').
road('Makkah', 'Riyadh').

road('Madinah', 'Makkah').
road('Madinah', 'Taif').
road('Madinah', 'Tabuk').

road('Tabuk', 'Taif').

road('Taif', 'Tabuk').
road('Taif', 'Dammam').

road('Riyadh', 'Dammam').

road('Dammam', 'Riyadh').
road('Dammam', 'Qatif').

road('Qatif', 'Dammam').
road('Qatif', 'Madinah').


% Find a path between two cities

travel(Start, End, Path) :-
    path(Start, End, [Start], ReversePath),
    reverse(ReversePath, Path).

% Destination reached

path(City, City, Visited, Visited).

% Explore connected cities

path(Current, Destination, Visited, Path) :-
    road(Current, Next),
    \+ member(Next, Visited),
    path(Next, Destination, [Next|Visited], Path).
