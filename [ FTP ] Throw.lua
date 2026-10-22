workspace.ChildAdded:Connect(function(v)
 if v.Name == "GrabParts" then if not v.GrabPart.WeldConstraint.Part1.Anchored then
   local Part = v.GrabPart.WeldConstraint.Part1
   v.Destroying:Wait()
   if game:GetService("UserInputService"):GetLastInputType() ~= Enum.UserInputType.MouseButton2 then return end

   task.wait()
   Part.AssemblyLinearVelocity = workspace.CurrentCamera.CFrame.LookVector * 400
  end
 end
end)
