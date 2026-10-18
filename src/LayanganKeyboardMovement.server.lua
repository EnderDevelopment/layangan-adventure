local layangan = script.Parent

local function onInput(input, gameProcessedEvent)
    if input.UserInputType == Enum.UserInputType.Keyboard then
        if input.KeyCode == Enum.KeyCode.W then
            layangan.Velocity = Vector3.new(0, 0, -10)
        elseif input.KeyCode == Enum.KeyCode.S then
            layangan.Velocity = Vector3.new(0, 0, 10)
        elseif input.KeyCode == Enum.KeyCode.A then
            layangan.Velocity = Vector3.new(-10, 0, 0)
        elseif input.KeyCode == Enum.KeyCode.D then
            layangan.Velocity = Vector3.new(10, 0, 0)
        end
    end
end

local function onInputEnded(input, gameProcessedEvent)
    if input.UserInputType == Enum.UserInputType.Keyboard then
        if input.KeyCode == Enum.KeyCode.W or input.KeyCode == Enum.KeyCode.S or input.KeyCode == Enum.KeyCode.A or input.KeyCode == Enum.KeyCode.D then
            layangan.Velocity = Vector3.new(0, 0, 0)
        end
    end
end

game:GetService("UserInputService").InputBegan:Connect(onInput)

game:GetService("UserInputService").InputEnded:Connect(onInputEnded)