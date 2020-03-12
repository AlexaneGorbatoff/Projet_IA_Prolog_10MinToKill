
%mettre les personnages dans des scénarios et garder les rôles et appartenances dans ce fichier
%création de personnages : personnage(X,Y,role = {killer K, cible C, rien R},appartenance = {joueur J, ordinateur O, nul N})

:-dynamic personnage/5.

personnage(p1,1,1,r,n).
personnage(p2,1,2,r,n).
personnage(p3,1,3,k,o).
personnage(p4,2,4,c,j).
personnage(p5,3,1,r,n).
personnage(p6,2,3,c,j).
personnage(p7,2,1,r,n).
personnage(p8,4,3,r,n).
personnage(p9,3,2,c,j).
personnage(p10,2,1,k,j).
personnage(p11,1,3,c,o).
personnage(p12,3,4,r,n).
personnage(p13,4,1,r,n).
personnage(p14,3,1,c,o).
personnage(p15,1,1,c,o).
personnage(p16,2,1,r,n).

caseSniper(2,3).
caseSniper(1,2).
caseSniper(4,1).


role(r).
role(k).
role(c).

appartenance(j).
appartenance(c).
appartenance(n).


case(X,Y):- integer(X),integer(Y),X >= 1, X =< 4, Y >= 1, Y =< 4.
etatCase(case(X,Y),LP):- findall(personnage(P,X,Y,R,A), personnage(P,X,Y,R,A), LP). %Récupération de la liste des personnages dans la case(X,Y)

deplacer(P,X,Y):- case(X,Y), retract(personnage(P,_,_,R,A)), assert(personnage(P,X,Y,R,A)). 

%ligne test : deplacer(personnage(P,_,_,R,A),X,Y):- case(X,Y), retract(personnage(P,_,_,R,A)), assert(personnage(P,X,Y,R,A)). 


