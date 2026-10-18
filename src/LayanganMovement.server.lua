-- Layangan Movement Script

local layangan = script.Parent
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local function onInput(input, gameProcessed)
    if input.UserInputType == Enum.UserInputType.MouseButton1 and not gameProcessed then
        -- Fly the layangan up
        layangan.Velocity = Vector3.new(0, 10, 0)
    end
end

local function onCharacterAdded(character)
    humanoid = character:WaitForChild("Humanoid")
end

player.CharacterAdded:Connect(onCharacterAdded)

game:GetService("UserInputService").InputBegan:Connect(onInput)
