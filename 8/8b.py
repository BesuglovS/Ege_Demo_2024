from itertools import permutations

count = 0
for per in permutations('01234567', r=5):
    s = ''.join(per)
    if ((s[0] != '0') and ('1' not in s) and
            (len(set(s)) == len(s))):
        for c in '246': s = s.replace(c, '0')
        for c in '357': s = s.replace(c, '1')
        if ('00' not in s) and ('11' not in s):
            count += 1
print(count)
