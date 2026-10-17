game.Players.LocalPlayer:WaitForChild("IsHeld").Changed:Connect(function(v)
 game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = v
 if v then game:GetService("ReplicatedStorage").CharacterEvents.Struggle:FireServer() end
end)
