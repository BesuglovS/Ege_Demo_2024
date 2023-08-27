##
var table := '12 13 14 15 16 17 21 27 31 35 37 41 45 46 51 53 54 61 64 71 72 73';
var graph := 'ac ag bc bd ca cb cd ce cf cg db dc de ec ed ef fc fe fg ga gc gf';

foreach var per in 'abcdefg'.Permutations do
begin
  var t := table;
  for var i := 1 to 7 do
    t := t.Replace(i.ToString, per[i]);
  if t.Split.ToHashSet = graph.Split.ToHashSet then
    per.Numerate.Println;
end;