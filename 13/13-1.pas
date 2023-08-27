###
uses school;

var count := 0; 
for var n := 240 to 255 do
  if (bin(n).Cnt('1') mod 2 = (bin(192).Cnt('1') + bin(32).Cnt('1') + bin(168).Cnt('1')) mod 2)
    then count += 1;
count.pr; 