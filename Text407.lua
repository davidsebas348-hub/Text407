repeat task.wait() until game:IsLoaded()

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

-- 🔥 COORDENADAS
local places = {
    afuera = Vector3.new(312, 36, -534),
    dentro = Vector3.new(382, 37, -254),
    electricidad = Vector3.new(546, 37, 34),
    ["dentro de la sala de el gerente"] = Vector3.new(254, 40, -316),
    arriba = Vector3.new(373, 99, -300)
}

-- 🔥 SELECCIÓN
local selected = tostring(getgenv().TP_PLACE or "afuera"):lower()

local pos = places[selected]

if pos then
    HumanoidRootPart.CFrame = CFrame.new(pos)
    print("📍 TP a:", selected)
else
    warn("❌ Lugar no válido")
end
