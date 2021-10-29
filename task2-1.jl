@enum FunctionType Arithmetic = 1 Geometric

function getInt(num)
  while true
    print("Введите значение $num стороны: ")
    a = readline()
    if tryparse(Float32, a) !== nothing 
      println("Вы ввели $(a)")
      return parse(Float32,a)
    else
      @warn "Введите число!"
    end
  end
end
  
function getType()
while true
   println("Выберите тип операции (1 = среднее арифметическое чисел, 2 = среднее геометрическое чисел)")
    programType = readline()
    if tryparse(UInt8, programType) !== nothing 
      println("Вы ввели $(programType)")
      return parse(UInt8,programType)
    else
      @warn "Введите число 1 или 2!"
    end
  end
end

a = getInt(1)
b = getInt(2)
programType = getType()

if programType == Int(Arithmetic)
 
  result = (a*a*a + b*b*b)/2
  println("Среднее арифметическое этих чисел $result")
end

if programType == Int(Geometric)
  result = sqrt(abs(a)*abs(b))
  println("Среднее геометрическое этих чисел $result")
end