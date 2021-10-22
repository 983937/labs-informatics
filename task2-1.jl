@enum FunctionType Arithmetic = 1 Geometric

function calcA()
  while true
    print("Введите значение первой стороны: ")
    a = readline()
    if tryparse(Float32, a) !== nothing 
      println("Вы ввели $(a)")
      return parse(Float32,a)
    else
      @warn "Введите число!"
    end
  end
end

function calcB()
  while true
    print("Введите значение первой стороны: ")
    b = readline()
    if tryparse(Float32, b) !== nothing 
      println("Вы ввели $(b)")
      return parse(Float32,b)
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
a = calcA()
b = calcB()
programType = getType()

if programType == Int(Arithmetic)
 
  result = (a + b)/2
  println("Среднее арифметическое этих чисел $result")
end

if programType == Int(Geometric)
  result = sqrt(a*b)
  println("Среднее геометрическое этих чисел $result")
end