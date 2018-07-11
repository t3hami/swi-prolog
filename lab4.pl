:-dynamic(student/3).
student(1001,kashif,_).

assign_grade:- write('Enter student ID: '),read(ID),student(ID,N,G),
write('Enter grade: '),read(Gr),retract(student(ID,_,_)),assert(student(ID,N,Gr)).