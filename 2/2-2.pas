// Не работает
function f(dt: array of boolean): boolean := 
  (dt[1] and (not dt[2])) or (dt[2] = dt[3]) or (not dt[0]);

begin
  foreach var vars in |False, True|.Cartesian(4) do
  begin
    var table := |(vars[0], vars[1], False, False), 
                  (True, False, vars[2], False), 
                  (True, False, True, vars[3])|;
    if table.Length = table.ToHashSet.Count then
    begin
      foreach var per in |0,1,2,3|.Permutations do
      begin
        var tr := (table[0].ToArray.Numerate.OrderBy(x -> per[x[0]]).Select(x -> x[1])).ToArray;
        if f(tr) = false then
          print();
      end;
    end;
  end;
end.