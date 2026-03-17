local calculatePrice = function(price)
    local vatRate = 0.07
    local totalPrice = price + (price * vatRate)
    return totalPrice
end

print("price with VAT: " .. calculatePrice(100))
print("-------------------------------------------------------------------------")
 
-------------------------------------------------------------------------

local backpack = {"Sword", "Shield", "Potion", "Sword"}

for i, item in ipairs(backpack) do
    print("ช่องที่ " .. i .. ": " .. item)
end

print(#backpack)

if #backpack < 5 then
    table.insert(backpack, "Bow")
else
    print("กระเป๋าเต็มแล้ว")
end

print("items :".. table.concat(backpack, ", "))
print("-------------------------------------------------------------------------")

-------------------------------------------------------------------------

local rollItem = function()
    local items = {"Common", "Rare", "Potion"}
    math.randomseed(os.time())
    math.random()
    local randomIndex = math.random(1,100)
    print("Random number: " .. randomIndex)
    if randomIndex <= 70 then
         return items[1]
    elseif randomIndex > 70 and randomIndex <= 95 then
         return items[2]
    else
        return items[3]
    end
end

local Gacha = rollItem()

print("คุณได้รับ Gacha ระดับ: " .. Gacha)
print("-------------------------------------------------------------------------")
