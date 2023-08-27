## uses School;
var tt := TrueTable((w, x, y, z) -> (x and (not y)) or (y = z) or (not w));
TrueTablePrint(tt, 0, 'wxyz'); 