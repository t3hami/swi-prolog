country(england, 3e7).
country(france, 2.3e7).
country(germany,1.6e7).
country(denmark,2.4e6).
country(canada,7.3e6).

greater_population(X):- country(X,Y), Y>1e7.