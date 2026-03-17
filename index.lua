 local baseDamage = 50
local criticalMultiplier = 2
local isCriticalHit = true
 
local function calculateDamage(damage, multiplier, isCrit)
    if isCrit then
        return damage * multiplier
    else
        return damage
    end
end

local finalDamage = calculateDamage(baseDamage, criticalMultiplier, isCriticalHit)

print("message: " .. finalDamage) 
print("message: " .. baseDamage .. " message " .. criticalMultiplier .. " message")

------------------------------------------------------------------------------------------------------------------

local weapons = {"Sword", "Axe", "Bow"}
table.insert(weapons, "Map") 
print("message: " .. weapons[1])

local playerStats = {
    HP = 100,
    Level = 1,
    Job = "Warrior"
}

print("message: " .. playerStats.HP)

------------------------------------------------------------------------------------------------------------------

for i = 1, 5 do
    print("รอบที่: " .. i)
end

------------------------------------------------------------------------------------------------------------------

local energy = 10
while energy > 0 do
    print("กำลังวิ่ง... พลังงานเหลือ: " .. energy)
    energy = energy - 1 
    --task.wait(1) -- พัก 1 วินาที (สำคัญมากใน Roblox เพื่อไม่ให้เกมค้าง) ใช้ได้เฉพาะใน Roblox Studio
end

------------------------------------------------------------------------------------------------------------------

local menuStack = {} 
table.insert(menuStack, "MainPage")
table.insert(menuStack, "SettingsPage")

local myInventory = {"Sword", "Shield"} 
table.insert(myInventory, "Axe")

print(myInventory[3]) -- Axe
print(#myInventory)

------------------------------------------------------------------------------------------------------------------

local score = 75

if score >= 80 then
    print("ยอดเยี่ยม! คุณได้รับเหรียญทอง")
elseif score >= 50 then
    print("ผ่านเกณฑ์! คุณได้รับเหรียญเงิน")
elseif score >= 10 then
    print("พยายามอีกนิด! คุณได้รับเหรียญทองแดง")
else
    print("แพ้แล้ว! ลองใหม่อีกครั้ง")
end

------------------------------------------------------------------------------------------------------------------

local money = 120
local level = 5

if money >= 100 and level >= 5 then
    print("ซื้อดาบสำเร็จ!")
else
    print("เงื่อนไขไม่ครบ")
end

-- print(tick()) -- ใช้ได้ใน Roblox Studio เพื่อแสดงเวลาปัจจุบันในวินาทีตั้งแต่วันที่ 1 มกราคม 1970
-- print(os.time()) -- ใช้ได้ใน Lua ทั่วไป เพื่อแสดงเวลาปัจจุบันในวินาทีตั้งแต่วันที่ 1 มกราคม 1970

--WaitForChild("PlayerGui")
--FindFirstChild("MainPage")
--GetDecendants()
--childAdded:Connect(function(child)

--localScript
--ModelScript
--Script
--CoreScript

--pairs
--ipairs

--Player.Location
--Humanoid.Health
--HuumanoidRootPart.CFrame
--Character.Position

--wait(1) -- ใช้ได้ใน Roblox Studio เพื่อพัก 1 วินาทีโดยไม่ทำให้เกมค้าง
--delay(1, function() print("ผ่านไป 1 วินาที") end)
--task.wait(1) -- ใช้ได้ใน Roblox Studio เพื่อพัก 1 วินาทีโดยไม่ทำให้เกมค้าง
--sleep(1) -- ใช้ได้ใน Lua ทั่วไป แต่ไม่แนะนำใน Roblox Studio เพราะจะทำให้เกมค้าง

--inpairs(folder:GetChildren()) do
--player.Backpack.FindFirstChild("Sword").Handle.Touched:Connect(function(hit)
--Anchored

--RemoteEvent
--LocalScript
--ModelScript
--BindableEvent

--ServerStorage
--DataStoreService
--MemoryStoreService
--MarketplaceService

----------------------------------------------------------------------------------------------------------------------
 