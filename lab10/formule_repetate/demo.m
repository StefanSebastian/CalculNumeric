actual = integral(@sin, 0, pi)
trapez = repetatTrapez(@sin, 0, pi, 100)
simpson = repetatSimpson(@sin, 0, pi, 100)
dreptunghi = repetatDreptunghi(@sin, 0, pi, 100)

adapt = adaptquad(@sin, 0, pi, 0.0001, @repetatTrapez)