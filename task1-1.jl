x=-4.8 
y=17.5
z=3.2

println("X=$x")
println("Y=$y")
println("Z=$z")

AResult = y * z * x * x - (z/sin(x/z)^2)
BResult = z * exp(-sqrt(z)) * cos(y*x/z)

println("A = $AResult");
println("B =  $BResult")