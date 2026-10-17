workspace.ChildAdded:Connect(function(v)
 if v.Name ~= "GrabParts" then return end

 local BodyV = Instance.new("BodyVelocity", v.GrabPart.WeldConstraint.Part1)
 v.AncestryChanged:Wait()

 if game:GetService("UserInputService"):GetLastInputType() == Enum.UserInputType.MouseButton2 then
  BodyV.MaxForce = Vector3.one * 1e9
  BodyV.Velocity = workspace.CurrentCamera.CFrame.LookVector * 400
  game:GetService("Debris"):AddItem(BodyV, 1)
 else
  BodyV:Destroy()
 end
end)
