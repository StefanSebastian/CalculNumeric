r = metodaRomberg(@sin, 0, pi, 0.001, 1000)
actual = integral(@sin, 0, pi)

r = metodaRomberg(@exp, 0, 100, 0.001, 50)
actual = integral(@exp, 0, 100)