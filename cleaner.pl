:-dynamic(status/2).
:-dynamic(position/1).

status(roomA,dirty).
status(roomB,dirty).

position(roomA).

clean_position:- position(Room), status(Room,dirty),retract(status(Room,_)),
assert(status(Room,clean)),write(Room),write(' cleaned'),nl, update_position, go.
clean_position:- write('Room already clean'),nl,update_position.

update_position:- status(roomA,clean), status(roomB,clean), quit.

update_position:- position(X),
                    (
                        (X == roomA)->
                            (set_new_position(roomB));
                            (set_new_position(roomA))
                    ).
set_new_position(Room):- retract(position(_)),assert(position(Room)).

go:- clean_position.