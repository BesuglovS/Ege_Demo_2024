##
var arr := Readlines('26_2024_1.txt').Skip(1).Select(x -> x.ToIntegers).OrderBy(x -> x[1]).ToArray;
var (cnt, nextstart, lastend) := (0, 0, 0);
foreach var x in arr index z do
  if x[0] >= nextstart then (cnt, lastend, nextstart) := (cnt + 1, nextstart, arr[z][1]);
var eprst := 999;
print(cnt, arr.max(x -> x[0] - lastend)); 