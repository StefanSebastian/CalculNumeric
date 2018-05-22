res = apelAdQuad2(@sin, 0, pi, 0.001)
actual = integral(@sin, 0, pi)

r = apelAdQuad2(@exp, 0, 10, 0.001)
actual = integral(@exp, 0, 10)
