##
var x13 := Readlines('17_2024.txt')
           .Where(x -> x.Right(2) = '13')
           .Max(x -> x.ToInteger);
var sqn := Readlines('17_2024.txt')
           .Select(x -> x.ToInteger)
           .Nwise(3)
           .Where(x -> x.Sum <= x13)
           .Where(x -> (Ord(x[0].Between(100, 999)) + Ord(x[1].Between(100, 999)) + Ord(x[2].Between(100, 999))) = 2);
Print(sqn.Count, sqn.Max(x -> x.Sum)); 