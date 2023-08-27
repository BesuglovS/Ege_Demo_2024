from itertools import permutations

table = '12 13 14 15 16 17 21 27 31 35 37 41 45 46 51 53 54 61 64 71 72 73'
graph = 'ac ag bc bd ca cb cd ce cf cg db dc de ec ed ef fc fe fg ga gc gf'

for per in permutations('abcdefg'):
    t = table
    for i in range(7):
        t = t.replace(str(i + 1), per[i])
    if set(t.split()) == set(graph.split()):
        print(*enumerate(per, 1))
