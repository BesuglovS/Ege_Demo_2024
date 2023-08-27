## uses School;
var ip := '192.168.32.160';
var mask := '255.255.255.240';
ip.Split('.').Select(x -> bin(x.toInteger)).Println;
mask.Split('.').Select(x -> bin(x.toInteger)).Println;