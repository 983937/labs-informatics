function calculate()
  a = calcA()
  b = calcB()
  c = calcC()

  println(a * b)

  p = a + b + c
  triangleResult = sqrt(p * (p-a) * (p-b) * (p-c))
  println(triangleResult)
end 

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
    print("Введите значение второй стороны: ")
    b = readline()
    if tryparse(Float32, b) !== nothing 
      println("Вы ввели $(b)")
      return  parse(Float32,b)
    else
      @warn "Введите число!"
    end
  end
end

function calcC()
  while true
    print("Введите значение третьей стороны: ")
    c = readline()
    if tryparse(Float32, c) !== nothing 
        println("Вы ввели $(c)")
        return  parse(Float32,c)
    else
        @warn "Введите число!"
    end
  end
end

calculate()