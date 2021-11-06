function calculate()
  a = getSide(1)
  b = getSide(2)
  c = getSide(3)

  rectangleResult = a*b
  println("Площадь прямоугольника: $rectangleResult")

  isTriangle = checkTriangle(a,b,c)
  if (isTriangle == true)
    p = (a + b + c)/2
    triangleResult = sqrt(p * (p-a) * (p-b) * (p-c))
    println("Площадь треугольника: $triangleResult")
  else
    println("Данные стороны не могут образовывать треугольник. Перезапустите программу")
  end
end 

function getSide(sideCount)
  while true
    print("Введите значение $sideCount стороны: ")
    a = readline()
    if tryparse(UInt8, a) !== nothing 
      println("Вы ввели $(a)")
      return parse(UInt8,a)
    else
      @warn "Введите положительное число!"
    end
  end
end

function checkTriangle(a,b,c)
  Result=true;
  if(a+b<c&&Result)
      Result=false;
  end
  if(b+c<a&&Result) 
    Result=false;
  end
  if(a+c<b&&Result) 
    Result=false;
  end
   return Result;
end

calculate() 