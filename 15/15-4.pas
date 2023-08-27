##
for var a := 1 to 10000 do
begin
  var all := true;
  for var x := 1 to 10000 do
    for var y := 1 to 10000 do
      if not ((x + 2 * y < a) or (y > x) or (x > 60)) then
        all := false;
  if all then
  begin
    Print(a);
    break
  end;  
end; 