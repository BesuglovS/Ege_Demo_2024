##
var diap := 0..1000;
var diap2 := diap.Cartesian(diap);
diap.Where(a -> diap2.All(\(x,y)->(x + 2 * y < a) or (y > x) or (x > 60)))
.First
.Print; 