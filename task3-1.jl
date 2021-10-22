println("Y=X-(1/(3+sin(3,6x))")
println("Производится табулирование данной функции")
println("Для корректной работы данной программы должны выполняться следующие условия")
println("1. вводится должны только целые числа")
println("2. конечный интервал должен быть больше начального")

function calcBeginValue()
while true
    println("Введите начало интервала:")
    beginValue = readline()
    if tryparse(Float32, beginValue) !== nothing 
      println("Вы ввели $(beginValue)")
      return parse(Float32,beginValue)
    else
      @warn "Введите число!"
    end
  end
end

function calcEndValue()
while true
    println("Введите конец интервала:")
    endValue = readline()
    if tryparse(Float32, endValue) !== nothing 
      if  parse(Float32,endValue) > beginValue
        println("Вы ввели $(endValue)")
        return parse(Float32,endValue)
      else
        @warn "Конечный интервал должен быть больше начального"
      end
    else
      @warn "Введите число!"
    end
  end
end

function calcStepValue()
while true
    println("Введите шаг интервала:")
    stepValue = readline()
    if tryparse(Float32, stepValue) !== nothing 
      println("Вы ввели $(stepValue)")
      return parse(Float32,stepValue)
    else
      @warn "Введите число!"
    end
  end
end


beginValue = calcBeginValue()
endValue = calcEndValue()
stepValue = calcStepValue()

println("Начало интервала $beginValue, конец интервала $endValue, шаг интервала $stepValue")

x = beginValue
while x<=endValue
global x
y= x - (1/(3+sin(3.6x)))
println("X = $x      Y = $y")
x = x + stepValue
end