a = []
for n in range(4, 10001):
    s = bin(n)[2:]
    if n % 3 == 0:
        s += s[-3:]
    else:
        s += bin((n % 3) * 3)[2:]
    r = int(s, 2)
    if r > 151:
        a.append(r)
print(min(a))
