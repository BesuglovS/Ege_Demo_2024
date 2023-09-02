import re
from itertools import permutations

count = 0
for per in permutations('01234567', r=5):
    s = ''.join(per)
    if ((s[0] != '0') and ('1' not in s) and
            (len(set(s)) == len(s)) and
            (not re.match(r'^.*[02468][02468].*$', s)) and
            (not re.match(r'^.*[13579][13579].*$', s))):
        count += 1
print(count)
