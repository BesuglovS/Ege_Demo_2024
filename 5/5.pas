## uses School;
var a := new List<integer>();
for var n := 4 to 10000 do
begin
  var str := ToBase(n, 2);
  if n.Divs(3) then
    str += str[^3:]
  else
    str += ToBase((n mod 3) * 3, 2);
  var r := School.Dec(str, 2);
  if r > 151 then
    a.Add(r);  
end; 
print(a.Min);