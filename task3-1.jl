println("Y=X-(1/(3+sin(3,6x))")
println("Производится табулирование данной функции")
println("Для корректной работы данной программы должны выполняться следующие условия")
println("1. вводится должны только целые числа")
println("2. конечный интервал должен быть больше начального")

function getValue(message, isEndValue = false)
while true
    println(message)
    value = readline()
    if tryparse(Float32, value) !== nothing 
      if  isEndValue == true 
        if parse(Float32,value) > beginValue
          println("Вы ввели $(value)")
          return parse(Float32,value)
        else
          @warn "Конечный интервал должен быть больше начального"
        end
      else
        println("Вы ввели $(value)")
        return parse(Float32,value)
      end
    else
      @warn "Введите число!"
    end
  end
end

beginValue = getValue("Введите начало интервала")
endValue = getValue("Введите конец интервала", true)
stepValue = getValue("Введите шаг интервала")

println("Начало интервала $beginValue, конец интервала $endValue, шаг интервала $stepValue")

x = beginValue
while x<=endValue
global x
y= x - (1/(3+sin(3.6x)))
println("X = $x      Y = $y")
x = x + stepValue
end