local ArmstrongNumbers = {}

function sumOfCubes(n)
    local sum = 0
    local nStr = tostring(n)
    for i = 1, #nStr do
        local digit = tonumber(nStr:sub(i, i))
        sum = sum + digit ^ 3
    end
    return sum
end

function ArmstrongNumbers.is_armstrong_number(number)
    local num = sumOfCubes(number)
    if num == number then
        return true
    else
        return false
    end
end

return ArmstrongNumbers
