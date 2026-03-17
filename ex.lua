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

--------------------------------------------------------------------------
--ใช้ ipairs: เมื่อคุณต้องการความ "เป๊ะ" ของลำดับ (เช่น อันดับใน Leaderboard) และมั่นใจว่าตารางไม่แหว่ง 
--ใช้ pairs: เมื่อคุณต้องการความ "ครบถ้วน" โดยไม่สนว่ากุญแจจะเป็นชื่อหรือตัวเลข และไม่สนว่าจะเรียงกันไหม

local myInventory = {"Sword", "Shield"} 
local addItem = function(item) 
    for index, value in ipairs(item) do
        if #myInventory < 5 then
            table.insert(myInventory, value)
        else
            print("กระเป๋าเต็มแล้ว ไม่สามารถเพิ่ม " .. value .. " ได้")
        end
    end
end

local newItems = {"Axe", "Bow", "Helmet", "Armor", "Boots", "Ring", "Amulet", "Gloves", "Cloak", "Belt"} 
addItem(newItems)

print("items :".. table.concat(myInventory, ", ")) 
print("-------------------------------------------------------------------------")

------------------------------------------------------------------------------------------------------------------
local packItems = {"Axe", "Bow", "Helmet", "Armor", "Boots", "Ring", "Amulet", "Gloves", "Cloak", "Belt"} 
local findItem = function(item)
    for index, value in ipairs(packItems) do
        if value == item then 
            return index
        end
    end

    return -1
end 

local checkItem = findItem("Axe")
if checkItem ~= -1 then
    print("มี Axe อยู่ในกระเป๋า")
else
    print("ไม่มี Axe อยู่ในกระเป๋า")
end 

table.remove(packItems, 1) 
print("items :".. table.concat(packItems, ", "))

print("-------------------------------------------------------------------------")

-----------------------------------------------------------------------------------------------------
 
local prices = {
    ["Sword"] = 100,
    ["Shield"] = 150,
    ["Potion"] = 50
}

local player = {
    Coin = 200,
    isVIP =  true
}

local calPrice = function(item, isVIP)
   if isVIP then
        return prices[item] - (prices[item] * 0.20)
   else
        return prices[item]
   end
    
end

local priceForYou = calPrice("Sword", player.isVIP)
print("ราคาสำหรับคุณ: " .. priceForYou)
 

